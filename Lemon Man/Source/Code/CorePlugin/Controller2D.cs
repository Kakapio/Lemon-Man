using Duality;
using Duality.Components.Physics;
using Duality.Components.Renderers;

namespace Player
{
    /// <summary>
    ///     Does a majority of the calculations for the platformer movement system.
    /// </summary>
    public class Controller2D : Component, ICmpInitializable
    {
        private Rect bounds;

        private CollisionInfo collisions;

        private float horizontalRaySpacing;
        private RayCastOrigins raycastOrigins;
        private float verticalRaySpacing;
        private float SkinWidth { get; } = 0.015f;
        private int HorizontalRayCount { get; set; } = 3;
        private int VerticalRayCount { get; set; } = 3;

        public CollisionInfo Collisions
        {
            get { return collisions; }
        }

        public void OnInit(InitContext context)
        {
            CalculateBounds();
            CalculateRaySpacing();
        }

        public void OnShutdown(ShutdownContext context)
        {
        }

        public void Move(Vector2 velocity)
        {
            CalculateBounds();
            CalculateRayCastOrigins();
            collisions.Reset();

            if (velocity.X != 0.0)
                HorizontalCollisions(ref velocity);
            if (velocity.Y != 0.0)
                VerticalCollisions(ref velocity);

            GameObj.Transform.MoveByAbs(velocity);
        }

        private void HorizontalCollisions(ref Vector2 velocity)
        {
            var directionX = MathF.Sign(velocity.X);
            var rayLength = MathF.Abs(velocity.X) + SkinWidth;

            for (var i = 0; i < HorizontalRayCount; i++)
            {
                var rayOrigin = directionX == -1 ? raycastOrigins.bottomLeft : raycastOrigins.bottomRight;
                rayOrigin -= Vector2.UnitY*(horizontalRaySpacing*i);

                if (DualityApp.ExecEnvironment == DualityApp.ExecutionEnvironment.Editor)
                    VisualLog.Default.DrawVector(rayOrigin.X, rayOrigin.Y, 0, directionX*rayLength, 0);

                RayCastCallback raycastCallback = data => 1.0f;
                RayCastData rayCastData;

                if (RigidBody.RayCast(rayOrigin, rayOrigin + Vector2.UnitX*directionX*rayLength, raycastCallback,
                    out rayCastData))
                {
                    var distance = (rayOrigin - rayCastData.Pos).Length;

                    velocity.X = (distance - SkinWidth)*directionX;
                    rayLength = distance;

                    collisions.right = directionX == 1;
                    collisions.left = directionX == -1;
                }
            }
        }

        private void VerticalCollisions(ref Vector2 velocity)
        {
            var directionY = MathF.Sign(velocity.Y);
            var rayLength = MathF.Abs(velocity.Y) + SkinWidth;

            for (var i = 0; i < VerticalRayCount; i++)
            {
                var rayOrigin = directionY == -1 ? raycastOrigins.topLeft : raycastOrigins.bottomLeft;
                rayOrigin += Vector2.UnitX*(verticalRaySpacing*i + velocity.X);

                if (DualityApp.ExecEnvironment == DualityApp.ExecutionEnvironment.Editor)
                    VisualLog.Default.DrawVector(rayOrigin.X, rayOrigin.Y, 0, 0, directionY*rayLength);

                RayCastCallback raycastCallback = data => 1.0f;
                RayCastData rayCastData;

                if (RigidBody.RayCast(rayOrigin, rayOrigin + Vector2.UnitY*directionY*rayLength, raycastCallback,
                    out rayCastData))
                {
                    var distance = (rayOrigin - rayCastData.Pos).Length;
                    velocity.Y = (distance - SkinWidth)*directionY;
                    rayLength = distance;

                    collisions.below = directionY == 1;
                    collisions.above = directionY == -1;
                }
            }
        }

        private void CalculateBounds()
        {
            var spriteRenderer = GameObj.GetComponent<SpriteRenderer>();
            var animSpriteRenderer = GameObj.GetComponent<AnimSpriteRenderer>();
            if (spriteRenderer != null)
            {
                bounds = new Rect(
                    GameObj.Transform.Pos.X + spriteRenderer.Rect.X,
                    GameObj.Transform.Pos.Y + spriteRenderer.Rect.Y,
                    spriteRenderer.Rect.W,
                    spriteRenderer.Rect.H);
            }
            else if (animSpriteRenderer != null)
            {
                bounds = new Rect(
                    GameObj.Transform.Pos.X + animSpriteRenderer.Rect.X,
                    GameObj.Transform.Pos.Y + animSpriteRenderer.Rect.Y,
                    animSpriteRenderer.Rect.W,
                    animSpriteRenderer.Rect.H);
            }
            else
            {
                Log.Game.WriteError("A spriterenderer or animspriterenderer has to be attached!");
                bounds = new Rect();
            }
        }

        private void CalculateRayCastOrigins()
        {
            var shrinkedBounds = new Rect(bounds.X + SkinWidth, bounds.Y + SkinWidth, bounds.W - 2*SkinWidth,
                bounds.H - 2*SkinWidth);
            raycastOrigins.topLeft = shrinkedBounds.TopLeft;
            raycastOrigins.bottomLeft = shrinkedBounds.BottomLeft;
            raycastOrigins.topRight = shrinkedBounds.TopRight;
            raycastOrigins.bottomRight = shrinkedBounds.BottomRight;
        }

        private void CalculateRaySpacing()
        {
            var shrinkedBounds = new Rect(bounds.X + SkinWidth, bounds.Y + SkinWidth, bounds.W - 2*SkinWidth,
                bounds.H - 2*SkinWidth);

            HorizontalRayCount = MathF.Clamp(HorizontalRayCount, 2, int.MaxValue);
            VerticalRayCount = MathF.Clamp(VerticalRayCount, 2, int.MaxValue);

            horizontalRaySpacing = shrinkedBounds.H/(HorizontalRayCount - 1);
            verticalRaySpacing = shrinkedBounds.W/(VerticalRayCount - 1);
        }

        public struct CollisionInfo
        {
            public bool above, below, left, right;
            public float slopeAngle;
            public float slopeAngleOld;
            public bool climbingSlope;

            public void Reset()
            {
                above = below = left = right = false;
                slopeAngleOld = slopeAngle;
            }
        }

        private struct RayCastOrigins
        {
            public Vector2 topLeft, bottomLeft, topRight, bottomRight;
        }
    }
}