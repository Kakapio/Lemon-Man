using Duality;
using Duality.Resources;

namespace Misc
{
    public enum ProjectileType
    {
        bullet,
        grenade
    }

    public class Weapon
    {
        public Weapon(int id, string title, string slug, int burstCount, ProjectileType typeOfProjectile, int rateOfFire,
                      int range, int inaccuracy)
        {
            ID = id;
            Title = title;
            Slug = slug;
            Sprite = new ContentRef<Texture>(null, @"Data\Sprites & Spritesheets\Weapons\" + slug + @".Texture.res");
            BurstCount = burstCount;
            TypeOfProjectile = typeOfProjectile;
            RateOfFire = rateOfFire;
            Range = range;
            Inaccuracy = inaccuracy;
        }

        public int ID { get; private set; }
        public string Title { get; private set; }
        public string Slug { get; private set; }
        public ContentRef<Texture> Sprite { get; private set; }
        //Load using slug and by placing all sprites in one folder
        public int BurstCount { get; private set; }
        public ProjectileType TypeOfProjectile { get; private set; }
        public int RateOfFire { get; private set; }
        public int Range { get; private set; }
        public int Inaccuracy { get; private set; }
    }
}