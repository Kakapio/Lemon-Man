using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Components.Renderers;
using Duality.Resources;
using System;
using System.Collections.Generic;

namespace Behavior
{
    /// <summary>
    /// Gives the weapon object its basic behaviors, such as being attached to the player, and reflecting the sprite of the currently held
    /// item.
    /// </summary>
    [RequiredComponent(typeof(SpriteRenderer)), RequiredComponent(typeof(Transform))]
    public class HeldWeapon : Component, ICmpUpdatable, ICmpInitializable
    {
        private SpriteRenderer spriteRenderer; //Spriterenderer of object, to allow sprite to change to held weapon.
        private Transform transform; //Transform of weapon, to be set to a position relative to player.
        private GameObject player;
        private GameObject weaponDatabaseObject;
        private List<Misc.Weapon> weaponDatabase;
        private Misc.Weapon heldWeapon;
        private Vector2 weaponOffset = new Vector2(6, 3); //Offset of weapon, relative to the center of the player.
        private ContentRef<Prefab> BulletPrefab;
        private float firingDelayCounter;
        private float firingDelay;

        public Vector3 bulletSpawnOffset { get; set; } = new Vector3(4, -15, -0.1f);

        void ICmpInitializable.OnInit(InitContext context)
        {
            if (context == InitContext.Activate)
            {
                spriteRenderer = GameObj.GetComponent<SpriteRenderer>();
                transform = GameObj.GetComponent<Transform>();
                player = this.GameObj.ParentScene.FindGameObject<Player.PlayerController>();
                weaponDatabaseObject = this.GameObj.ParentScene.FindGameObject<Manager.WeaponDatabaseManager>();
                weaponDatabase = weaponDatabaseObject.GetComponent<Manager.WeaponDatabaseManager>().weaponDatabase;
                transform.Pos = new Vector3(0, 0, -0.1f);
                BulletPrefab = new ContentRef<Prefab>(null, @"Data\Prefabs\PlayerBullet.Prefab.res");
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
            if (DualityApp.Keyboard.KeyHit(Duality.Input.Key.X) && firingDelayCounter > firingDelay)
            {
                firingDelayCounter = 0;
                InstantiateBullet();
            }
        }

        public void ChangeHeldWeapon(int weapontoChangeToID)
        {
            for (int i = 0; i < weaponDatabase.Count; i++)
            {
                if (weaponDatabase[i].ID == weapontoChangeToID)
                {
                    heldWeapon = weaponDatabase[i];
                    UpdateHeldWeaponComponents();
                }
                else
                    return; //End search instead of 'continue', which would make it continue using the rest of the code
            }
        }

        private void UpdateHeldWeaponComponents()
        {
            spriteRenderer.SharedMaterial.Res.MainTexture = heldWeapon.Sprite;
            firingDelay = heldWeapon.RateOfFire * 100f;
        }

        private void MoveWeaponWithPlayer()
        {
            if (player.GetComponent<Player.PlayerController>().facingDirection == Player.FacingDirection.right) //Places weapon sprite
            {                                                                                                   //on player, and flips it.
                GameObj.Transform.Pos = new Vector3(player.Transform.Pos.X + weaponOffset.X,
                                                    player.Transform.Pos.Y + 3, -0.1f);
                spriteRenderer.Flip = SpriteRenderer.FlipMode.None;
            }
            else if (player.GetComponent<Player.PlayerController>().facingDirection == Player.FacingDirection.left)
            {
                GameObj.Transform.Pos = new Vector3(player.Transform.Pos.X - weaponOffset.X,
                                                    player.Transform.Pos.Y + 3, -0.1f);
                spriteRenderer.Flip = SpriteRenderer.FlipMode.Horizontal;
            }
        }

        private void InstantiateBullet()
        {
            Transform weaponTransform = GameObj.Transform;
            GameObject bullet;
            PlayerBullet bulletScript;
            for (int i = 0; i < heldWeapon.BurstCount; i++) //Instantiates correct amount of bullets
            {
                float positiveNegativeOffset = MathF.Rnd.Next(0, 2);
                if (positiveNegativeOffset == 0)
                    positiveNegativeOffset = -1;
                float bulletAngleOffset = MathF.DegToRad(MathF.Rnd.Next(1, heldWeapon.Accuracy) * positiveNegativeOffset);

                if (player.GetComponent<Player.PlayerController>().facingDirection == Player.FacingDirection.right)
                {
                    bullet = BulletPrefab.Res.Instantiate(new Vector3(weaponTransform.Pos.X + bulletSpawnOffset.X,
                                                                      weaponTransform.Pos.Y + bulletSpawnOffset.Y, -0.1f), 
                                                                      weaponTransform.Angle, .5f);
                    bulletScript = bullet.GetComponent<PlayerBullet>();
                    bulletScript.LinearVelocityToSet = new Vector2(MathF.Cos(bulletAngleOffset) * bulletScript.Speed, //Adds inaccuracy
                                                                   MathF.Sin(bulletAngleOffset) * bulletScript.Speed);
                    Scene.Current.AddObject(bullet);
                }
                else
                {
                    bullet = BulletPrefab.Res.Instantiate(new Vector3(weaponTransform.Pos.X - bulletSpawnOffset.X,
                                                                      weaponTransform.Pos.Y + bulletSpawnOffset.Y, -0.1f), 
                                                                      weaponTransform.Angle, .5f);
                    bulletScript = bullet.GetComponent<PlayerBullet>();
                    bulletScript.LinearVelocityToSet = new Vector2(MathF.Cos(bulletAngleOffset) * bulletScript.Speed,
                                                                   MathF.Sin(bulletAngleOffset) * bulletScript.Speed);

                    Scene.Current.AddObject(bullet);
                }

                PlayerBullet bulletComponent = bullet.GetComponent<PlayerBullet>();
                bulletComponent.Creator = GameObj; //Tells bullet that it was created by player.
            }
        }
    }
}