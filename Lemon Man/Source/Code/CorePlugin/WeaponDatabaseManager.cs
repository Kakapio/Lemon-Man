using Duality;
using Duality.IO;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.IO;

namespace Manager
{
    /// <summary>
    /// Builds database with weapon stats from JSON file and compiles them into a list.
    /// </summary>
    public class WeaponDatabaseManager : Component, ICmpInitializable
    {
        public List<Misc.Weapon> weaponDatabase { get; private set; }

        void ICmpInitializable.OnInit(InitContext context)
        {
            if (context == InitContext.Loaded)
            {
                ConstructWeaponDatabase();
            }
        }

        void ICmpInitializable.OnShutdown(ShutdownContext context)
        {
        }

        public void ConstructWeaponDatabase()
        {
            using (Stream s = FileOp.Open(@"Data\Misc\Weapons.json", FileAccessMode.Read)) //Opens file
            {
                using (StreamReader r = new StreamReader(s)) //Declares new reader
                {
                    string json = r.ReadToEnd(); //Reads 'r' and its stream (s) to the end of the file.
                    weaponDatabase = JsonConvert.DeserializeObject<List<Misc.Weapon>>(json); //Json.NET magic to place items from file
                }                                                                            //into list.
            }
        }
    }
}