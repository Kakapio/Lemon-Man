using Duality;

namespace Behavior
{
    public class EntityStats : Component, ICmpUpdatable, ICmpInitializable
    {
        public int MaxHealth { get; set; }
        public int CurrentHealth { get; set; }

        void ICmpInitializable.OnInit(InitContext context)
        {
            CurrentHealth = MaxHealth;
        }

        void ICmpInitializable.OnShutdown(ShutdownContext context)
        {
        }

        void ICmpUpdatable.OnUpdate()
        {
            if (CurrentHealth > MaxHealth)
                CurrentHealth = MaxHealth;

            if (CurrentHealth <= 0)
                GameObj.DisposeLater();
        }
    }
}