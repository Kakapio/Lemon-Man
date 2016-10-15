using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Duality;

namespace Behavior
{
    public class EntityStats : Component, ICmpUpdatable, ICmpInitializable
    {
        public int MaxHealth { get; set; }
        public int CurrentHealth { get; set; }

        void ICmpUpdatable.OnUpdate()
        {
            if (CurrentHealth > MaxHealth)
                CurrentHealth = MaxHealth;

            if (CurrentHealth <= 0)
                GameObj.DisposeLater();
        }

        void ICmpInitializable.OnInit(InitContext context)
        {
            CurrentHealth = MaxHealth;
        }

        void ICmpInitializable.OnShutdown(ShutdownContext context)
        {
        }
    }
}
