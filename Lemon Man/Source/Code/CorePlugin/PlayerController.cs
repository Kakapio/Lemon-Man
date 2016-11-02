using Behavior;
using Duality;
using Duality.Components.Renderers;
using Duality.Input;
using Duality.Resources;

namespace Player
{
    public enum FacingDirection
    {
        left,
        right
    }

    /// <summary>
    ///     Utilizes Controller2D to perform calculations and take input from the player for movement.
    /// </summary>
    [RequiredComponent(typeof(Controller2D))]
    public class PlayerController : Component, ICmpUpdatable, ICmpInitializable
    {
        private float firingDelayCounter;
        private float gravity;
        private GameObject heldWeapon;
        private float jumpVelocity;
        private SpriteRenderer spriteRenderer;
        private Vector2 velocity;
        private float MoveSpeed { get; } = 72;
        private float JumpHeight { get; } = 45;
        private float TimeToJumpApex { get; } = .45f;
        private float AccelerationGrounded { get; } = 100;
        private float AccelerationAirborne { get; set; } = 100;

        private Controller2D Controller
        {
            get { return GameObj.GetComponent<Controller2D>(); }
        }

        public FacingDirection facingDirection { get; private set; }

        public ContentRef<Prefab> BulletPrefab { get; set; }
        public float FiringDelay { get; set; } = 10f;
        public Vector3 bulletSpawnOffset { get; set; } = new Vector3(4, 0.1f, -0.1f);

        public void OnInit(InitContext context)
        {
            if (context != InitContext.Activate)
                return;

            spriteRenderer = GameObj.GetComponent<SpriteRenderer>();
            gravity = 2*JumpHeight/TimeToJumpApex/TimeToJumpApex;
            jumpVelocity = MathF.Abs(gravity)*TimeToJumpApex;
            Log.Game.Write(string.Format("Gravity: {0}, jump velocity: {1}", gravity, jumpVelocity));
            heldWeapon = GameObj.ParentScene.FindGameObject<HeldWeapon>();
        }

        public void OnShutdown(ShutdownContext context)
        {
        }

        public void OnUpdate()
        {
            firingDelayCounter += Time.MsPFMult*Time.TimeMult;
            if (Controller.Collisions.below || Controller.Collisions.above)
                velocity.Y = 0;

            var input = Vector2.Zero;
            if (DualityApp.Keyboard[Key.Left])
            {
                input.X = -1;
                facingDirection = FacingDirection.left;
            }
            else if (DualityApp.Keyboard[Key.Right])
            {
                input.X = 1;
                facingDirection = FacingDirection.right;
            }
            if (DualityApp.Keyboard[Key.Up])
                input.Y = -1;
            else if (DualityApp.Keyboard[Key.Down])
                input.Y = 1;

            if (DualityApp.Keyboard.KeyHit(Key.Z) && Controller.Collisions.below)
                velocity.Y = -jumpVelocity;

            var targetVelocityX = input.X*MoveSpeed;
            velocity.X = MathF.Lerp(velocity.X, targetVelocityX, AccelerationGrounded/100);
            velocity.Y += gravity*Time.TimeMult/60f;
            Controller.Move(velocity*Time.TimeMult/60f);
            UpdateSprite();
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