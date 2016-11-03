using System.Collections.Generic;
using System.IO;
using Duality;
using Duality.IO;
using Misc;
using Newtonsoft.Json;

namespace Manager
{
    /// <summary>
    ///     Builds database with weapon stats from JSON file and compiles them into a list.
    /// </summary>
    public class WeaponDatabaseManager : Component, ICmpInitializable
    {
        public List<Weapon> WeaponDatabase { get; private set; }

        void ICmpInitializable.OnInit(InitContext context)
        {
            if (context == InitContext.Loaded)
                ConstructWeaponDatabase();
        }

        void ICmpInitializable.OnShutdown(ShutdownContext context)
        {
        }

        public void ConstructWeaponDatabase()
        {
            using (var s = FileOp.Open(@"Data\Misc\Weapons.json", FileAccessMode.Read)) //Opens file
            {
                using (var r = new StreamReader(s)) //Declares new reader
                {
                    var json = r.ReadToEnd(); //Reads 'r' and its stream (s) to the end of the file.
                    WeaponDatabase = JsonConvert.DeserializeObject<List<Weapon>>(json);
                        //Json.NET magic to place items from file
                } //into list.
            }
        }
    }
}