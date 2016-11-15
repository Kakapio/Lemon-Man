using System.Collections.Generic;
using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Components.Renderers;
using Player;

namespace Behavior
{
    /// <summary>
    ///     Gives objects basic bullet properties. They damage enemies on impact, and disintegrate after a certain amount of
    ///     time.
    ///     These bullets are meant to be fired by the player, as they do not damage the player.
    /// </summary>
    [RequiredComponent(typeof(Transform))]
    [RequiredComponent(typeof(RigidBody))]
    [RequiredComponent(typeof(SpriteRenderer))]
    public class PlayerBullet : Component, ICmpInitializable, ICmpUpdatable, ICmpCollisionListener
    {
        private float lifetimeCounter;
        private GameObject player;
        private PlayerController playerController;
        private RigidBody rigidBody;
        private Transform transform;

        public float Speed { get; set; } = 1;
        public Vector2 LinearVelocityToSet { get; set; }
        public float BulletLifetime { get; set; } = 6; //In seconds
        public GameObject Creator { get; set; }

        void ICmpCollisionListener.OnCollisionBegin(Component sender, CollisionEventArgs args)
        {
            if (args.CollideWith == Creator)
                return; //Cancel the collision if it is with the creator of the bullet.

            //We cast to RigidBodyCollisionEventArgs to get access to the info about the shapes involved.
            var rigidBodyArgs = args as RigidBodyCollisionEventArgs;
            if ((rigidBodyArgs != null) && rigidBodyArgs.OtherShape.IsSensor) return; //Don't do anything if a sensor

            if (args.CollideWith == GameObj.ParentScene.FindGameObject<EntityStats>())
            {
                Log.Game.Write("Collided with a damageable object!");
            }
        }

        void ICmpCollisionListener.OnCollisionEnd(Component sender, CollisionEventArgs args)
        {
        }

        void ICmpCollisionListener.OnCollisionSolve(Component sender, CollisionEventArgs args)
        {
        }

        void ICmpInitializable.OnInit(InitContext context)
        {
            if (context == InitContext.Activate)
            {
                transform = GameObj.GetComponent<Transform>();
                rigidBody = GameObj.GetComponent<RigidBody>();
                player = GameObj.ParentScene.FindGameObject<PlayerController>();
                playerController = player.GetComponent<PlayerController>();

                Creator = player;
                rigidBody.LinearVelocity = LinearVelocityToSet;
            }
        }

        void ICmpInitializable.OnShutdown(ShutdownContext context)
        {
        }

        void ICmpUpdatable.OnUpdate()
        {
            lifetimeCounter += Time.TimeMult*Time.SPFMult;
            if (lifetimeCounter > BulletLifetime) //Make sure bullet does not last forever.
                GameObj.DisposeLater();
        }
    }
}