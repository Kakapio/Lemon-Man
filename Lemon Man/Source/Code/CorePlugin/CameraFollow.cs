using Duality;

namespace Camera
{
    /// <summary>
    ///     A component that causes the object it is placed on to follow a target.
    /// </summary>
    public class CameraFollow : Component, ICmpUpdatable
    {
        public GameObject PlayerObject { get; set; }

        public int ZoomLevel { get; set; }
        //Duality only reads properties, so they must be included to be seen in the editor.

        void ICmpUpdatable.OnUpdate()
        {
            GameObj.Transform.Pos = new Vector3(new Vector2(PlayerObject.Transform.Pos.X, PlayerObject.Transform.Pos.Y), ZoomLevel);
        }
    }
}