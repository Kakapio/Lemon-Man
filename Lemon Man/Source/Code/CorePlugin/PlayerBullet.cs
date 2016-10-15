using Duality;
using Duality.Components;
using Duality.Components.Renderers;
using Duality.Components.Physics;

namespace Behavior
{
    /// <summary>
    /// Gives objects basic bullet properties. They damage enemies on impact, and disintegrate after a certain amount of time.
    /// These bullets are meant to be fired by the player, as they do not damage the player.
    /// </summary>
    [RequiredComponent(typeof(Transform)), RequiredComponent(typeof(RigidBody)),
     RequiredComponent(typeof(SpriteRenderer))]
    public class PlayerBullet : Component, ICmpInitializable, ICmpUpdatable, ICmpCollisionListener
    {
        private Transform transform;
        private RigidBody rigidBody;
        private float lifetimeCounter;
        private GameObject player;
        private Player.PlayerController playerController;

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
            if (rigidBodyArgs != null && rigidBodyArgs.OtherShape.IsSensor == true) return; //Don't do anything if a sensor
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
                transform = this.GameObj.GetComponent<Transform>();
                rigidBody = this.GameObj.GetComponent<RigidBody>();
                player = this.GameObj.ParentScene.FindGameObject<Player.PlayerController>();
                playerController = player.GetComponent<Player.PlayerController>();

                Creator = player;

                Log.Game.Write("LinearVelocityToSet is {0}", LinearVelocityToSet);
                Log.Game.Write("The velocity of this bullet is {0}", this.GameObj.GetComponent<RigidBody>().LinearVelocity);
                Log.Game.Write("The position of this bullet is {0}", this.GameObj.Transform.Pos);
                if (playerController.facingDirection == Player.FacingDirection.right) //Change bullet direction based on player's direction.
                    rigidBody.LinearVelocity = Vector2.FromAngleLength(transform.Angle, Speed);
                else if (playerController.facingDirection == Player.FacingDirection.left)
                    rigidBody.LinearVelocity = Vector2.FromAngleLength(transform.Angle, Speed);
            }
        }

        void ICmpInitializable.OnShutdown(ShutdownContext context)
        {
        }

        void ICmpUpdatable.OnUpdate()
        {
            lifetimeCounter += (Time.TimeMult * Time.SPFMult);
            if (lifetimeCounter > BulletLifetime) //Make sure bullet does not last forever.
            {
                GameObj.DisposeLater();
            }
        }
    }
}