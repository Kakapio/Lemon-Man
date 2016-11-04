﻿using System.Collections.Generic;
using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Components.Renderers;
using Duality.Input;
using Duality.Resources;
using Manager;
using Misc;
using Player;

namespace Behavior
{
    /// <summary>
    ///     Gives the weapon object its basic behaviors, such as being attached to the player, and reflecting the sprite of the
    ///     currently held
    ///     item.
    /// </summary>
    [RequiredComponent(typeof(SpriteRenderer))]
    [RequiredComponent(typeof(Transform))]
    public class HeldWeapon : Component, ICmpUpdatable, ICmpInitializable
    {
        private ContentRef<Prefab> bulletPrefab;
        private float firingDelay;
        private float firingDelayCounter;
        private Weapon heldWeapon;
        private GameObject player;
        private SpriteRenderer spriteRenderer; //Spriterenderer of object, to allow sprite to change to held weapon.
        private Transform transform; //Transform of weapon, to be set to a position relative to player.
        private List<Weapon> weaponDatabase;
        private GameObject weaponDatabaseObject;
        private Vector2 weaponOffset = new Vector2(6, 3); //Offset of weapon, relative to the center of the player.
        private RigidBody bulletRigidBody;

        private Vector3 BulletSpawnOffset = new Vector3(4, -0.6f, -0.1f);

        void ICmpInitializable.OnInit(InitContext context)
        {
            if (context == InitContext.Activate)
            {
                spriteRenderer = GameObj.GetComponent<SpriteRenderer>();
                transform = GameObj.GetComponent<Transform>();
                player = GameObj.ParentScene.FindGameObject<PlayerController>();
                weaponDatabaseObject = GameObj.ParentScene.FindGameObject<WeaponDatabaseManager>();
                weaponDatabase = weaponDatabaseObject.GetComponent<WeaponDatabaseManager>().WeaponDatabase;
                bulletRigidBody = GameObj.GetComponent<RigidBody>();
                transform.Pos = new Vector3(0, 0, -0.1f);
                bulletPrefab = new ContentRef<Prefab>(null, @"Data\Prefabs\PlayerBullet.Prefab.res");
                firingDelayCounter = 0f;
                spriteRenderer.SharedMaterial.Res.MainTexture = null;
                ChangeHeldWeapon(0);
            }
        }

        void ICmpInitializable.OnShutdown(ShutdownContext context)
        {
        }

        void ICmpUpdatable.OnUpdate()
        {
            firingDelayCounter += Time.MsPFMult * Time.TimeMult;
            MoveWeaponWithPlayer();
            UpdateHeldWeaponComponents();
            if (DualityApp.Keyboard.KeyHit(Key.X) && (firingDelayCounter > firingDelay))
            {
                firingDelayCounter = 0;
                FireWeapon();
            }
        }

        public void ChangeHeldWeapon(int weaponToChangeToID)
        {
            foreach (Weapon weapon in weaponDatabase)
            {
                if (weapon.ID == weaponToChangeToID)
                {
                    heldWeapon = weapon;
                    UpdateHeldWeaponComponents();
                }
                else
                    return;
            }
        }

        private void UpdateHeldWeaponComponents()
        {
            spriteRenderer.SharedMaterial.Res.MainTexture = heldWeapon.Sprite;
            firingDelay = heldWeapon.RateOfFire*100f;
        }

        private void MoveWeaponWithPlayer()
        {
            if (player.GetComponent<PlayerController>().facingDirection == FacingDirection.right) //Places weapon sprite
            {
                //on player, and flips it.
                GameObj.Transform.Pos = new Vector3(player.Transform.Pos.X + weaponOffset.X,
                    player.Transform.Pos.Y + 3, -0.1f);
                spriteRenderer.Flip = SpriteRenderer.FlipMode.None;
            }
            else if (player.GetComponent<PlayerController>().facingDirection == FacingDirection.left)
            {
                GameObj.Transform.Pos = new Vector3(player.Transform.Pos.X - weaponOffset.X,
                    player.Transform.Pos.Y + 3, -0.1f);
                spriteRenderer.Flip = SpriteRenderer.FlipMode.Horizontal;
            }
        }

        private void FireWeapon()
        {
            /*
            var weaponTransform = GameObj.Transform;
            GameObject bullet;
            PlayerBullet bulletScript;
            for (var i = 0; i < heldWeapon.BurstCount; i++) //Instantiates correct amount of bullets
            {
                float positiveNegativeOffset = MathF.Rnd.Next(0, 2);
                if (positiveNegativeOffset == 0)
                    positiveNegativeOffset = -1;
                var bulletAngleOffset = MathF.DegToRad(MathF.Rnd.Next(1, heldWeapon.Accuracy)*positiveNegativeOffset);

                if (player.GetComponent<PlayerController>().facingDirection == FacingDirection.right)
                {
                    bullet = bulletPrefab.Res.Instantiate(new Vector3(weaponTransform.Pos.X + BulletSpawnOffset.X,
                            weaponTransform.Pos.Y + BulletSpawnOffset.Y, -0.1f),
                        weaponTransform.Angle, .5f);
                    bulletScript = bullet.GetComponent<PlayerBullet>();
                    bulletScript.LinearVelocityToSet = new Vector2(MathF.Cos(bulletAngleOffset)*bulletScript.Speed,
                        //Adds inaccuracy
                        MathF.Sin(bulletAngleOffset)*bulletScript.Speed);

                    Scene.Current.AddObject(bullet);
                }
                else
                {
                    bullet = bulletPrefab.Res.Instantiate(new Vector3(weaponTransform.Pos.X - BulletSpawnOffset.X,
                            weaponTransform.Pos.Y + BulletSpawnOffset.Y, -0.1f),
                        weaponTransform.Angle, .5f);
                    bulletScript = bullet.GetComponent<PlayerBullet>();
                    bulletScript.LinearVelocityToSet = new Vector2(MathF.Cos(bulletAngleOffset)*bulletScript.Speed,
                        //Adds inaccuracy
                        MathF.Sin(bulletAngleOffset)*bulletScript.Speed);

                    Scene.Current.AddObject(bullet);
                }

                var bulletComponent = bullet.GetComponent<PlayerBullet>();
                bulletComponent.Creator = GameObj; //Tells bullet that it was created by player.
            }
            */

            for (var i = 0; i < heldWeapon.BurstCount; i++)
            {
                GameObject bullet;
                PlayerBullet bulletScript;
                int positiveNegativeOffset = MathF.Rnd.Next(0, 2);
                positiveNegativeOffset = positiveNegativeOffset == 0 ? -1 : 1; //is positiveNegativeOffset equal to zero? Set it to 1. Otherwise set it to -1
                var bulletAngleOffset = MathF.DegToRad(MathF.Rnd.Next(1, heldWeapon.Inaccuracy) * positiveNegativeOffset);

                switch (player.GetComponent<PlayerController>().facingDirection)
                {
                    case FacingDirection.right:
                        bullet = bulletPrefab.Res.Instantiate(new Vector3(GameObj.Transform.Pos.X + BulletSpawnOffset.X,
                                                                          GameObj.Transform.Pos.Y + BulletSpawnOffset.Y, -0.1f), 
                                                                          GameObj.Transform.Angle, 0.5f);
                        bulletScript = bullet.GetComponent<PlayerBullet>();
                        bulletScript.LinearVelocityToSet = new Vector2(MathF.Cos(bulletAngleOffset) * bulletScript.Speed,
                                                                       MathF.Sin(bulletAngleOffset) * bulletScript.Speed);
                        Scene.Current.AddObject(bullet);
                        break;

                    case FacingDirection.left:
                        bullet = bulletPrefab.Res.Instantiate(new Vector3(GameObj.Transform.Pos.X - BulletSpawnOffset.X,
                                                                          GameObj.Transform.Pos.Y + BulletSpawnOffset.Y, -0.1f),
                                                                          GameObj.Transform.Angle, 0.5f);
                        bulletScript = bullet.GetComponent<PlayerBullet>();
                        bulletScript.LinearVelocityToSet = new Vector2(MathF.Cos(bulletAngleOffset) * bulletScript.Speed * -1,
                                                                       MathF.Sin(bulletAngleOffset) * bulletScript.Speed);
                        Scene.Current.AddObject(bullet);
                        break;

                    default:
                        Log.Game.WriteError("Error, player is not facing left or right.");
                        break;
                }
            }
        }
    }
}