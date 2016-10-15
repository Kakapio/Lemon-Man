using Duality;

namespace Camera
{
    /// <summary>
    /// A component that causes the object it is placed on to follow a target.
    /// </summary>
    public class CameraFollow : Component, ICmpUpdatable
    {
        private GameObject player;

        public GameObject PlayerObject
        {
            get { return this.player; }
            set { this.player = value; }
        }

        public int zoomLevel { get; set; } //Duality only reads properties, so they must be included to be seen in the editor.

        void ICmpUpdatable.OnUpdate()
        {
            this.GameObj.Transform.Pos = new Vector3(new Vector2(player.Transform.Pos.X, player.Transform.Pos.Y), zoomLevel);
        }
    }
}