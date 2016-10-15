using Duality;
using Duality.Components.Renderers;
using Duality.Resources;
using System;

namespace Player
{
    public enum FacingDirection { left, right };

    /// <summary>
    /// Utilizes Controller2D to perform calculations and take input from the player for movement.
    /// </summary>
    [RequiredComponent(typeof(Controller2D))]
    public class PlayerController : Component, ICmpUpdatable, ICmpInitializable
    {
        private float MoveSpeed { get; set; } = 72;
        private float JumpHeight { get; set; } = 45;
        private float TimeToJumpApex { get; set; } = .45f;
        private float AccelerationGrounded { get; set; } = 100;
        private float AccelerationAirborne { get; set; } = 100;
        private float gravity;
        private float jumpVelocity;
        private float firingDelayCounter;
        private Vector2 velocity;
        private GameObject heldWeapon;
        private SpriteRenderer spriteRenderer;

        private Controller2D Controller
        {
            get
            {
                return GameObj.GetComponent<Controller2D>();
            }
        }

        public FacingDirection facingDirection { get; private set; } = new FacingDirection();

        public ContentRef<Prefab> BulletPrefab { get; set; }
        public float FiringDelay { get; set; } = 10f;
        public Vector3 bulletSpawnOffset { get; set; } = new Vector3(4, 0.1f, -0.1f);

        public void OnUpdate()
        {
            firingDelayCounter += Time.MsPFMult * Time.TimeMult;
            if (Controller.Collisions.below || Controller.Collisions.above)
            {
                velocity.Y = 0;
            }

            Vector2 input = Vector2.Zero;
            if (DualityApp.Keyboard[Duality.Input.Key.Left])
            {
                input.X = -1;
                facingDirection = FacingDirection.left;
            }
            else if (DualityApp.Keyboard[Duality.Input.Key.Right])
            {
                input.X = 1;
                facingDirection = FacingDirection.right;
            }
            if (DualityApp.Keyboard[Duality.Input.Key.Up])
                input.Y = -1;
            else if (DualityApp.Keyboard[Duality.Input.Key.Down])
                input.Y = 1;

            if (DualityApp.Keyboard.KeyHit(Duality.Input.Key.Z) && Controller.Collisions.below)
            {
                velocity.Y = -jumpVelocity;
            }

            float targetVelocityX = input.X * MoveSpeed;
            velocity.X = MathF.Lerp(velocity.X, targetVelocityX, AccelerationGrounded / 100);
            velocity.Y += gravity * Time.TimeMult / 60f;
            Controller.Move(velocity * Time.TimeMult / 60f);
            UpdateSprite();
        }

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate)
                return;

            spriteRenderer = GameObj.GetComponent<SpriteRenderer>();
            gravity = (2 * JumpHeight) / TimeToJumpApex / TimeToJumpApex;
            jumpVelocity = MathF.Abs(gravity) * TimeToJumpApex;
            Log.Game.Write(String.Format("Gravity: {0}, jump velocity: {1}", gravity, jumpVelocity));
            heldWeapon = this.GameObj.ParentScene.FindGameObject<Behavior.HeldWeapon>();
        }

        public void OnShutdown(ShutdownContext context)
        {
        }

        private void UpdateSprite()
        {
            if (facingDirection == FacingDirection.left)
                spriteRenderer.Flip = SpriteRenderer.FlipMode.Horizontal;
            else if (facingDirection == FacingDirection.right)
                spriteRenderer.Flip = SpriteRenderer.FlipMode.None;
        }
    }
}