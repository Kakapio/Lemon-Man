using Duality;
using Duality.Resources;

namespace Misc
{
    public enum ProjectileType { bullet, grenade }

    public class Weapon
    {
        public int ID { get; private set; }
        public string Title { get; private set; }
        public string Slug { get; private set; }
        public ContentRef<Texture> Sprite { get; private set; } //Load using slug and by placing all sprites in one folder
        public int BurstCount { get; private set; }
        public ProjectileType TypeOfProjectile { get; private set; }
        public int RateOfFire { get; private set; }
        public int Range { get; private set; }
        public int Accuracy { get; private set; }

        public Weapon(int id, string title, string slug, int burstCount, ProjectileType typeOfProjectile, int rateOfFire, int range,
                      int accuracy)
        {
            this.ID = id;
            this.Title = title;
            this.Slug = slug;
            this.Sprite = new ContentRef<Texture>(null, @"Data\Sprites & Spritesheets\Weapons\" + slug + @".Texture.res");
            this.BurstCount = burstCount;
            this.TypeOfProjectile = typeOfProjectile;
            this.RateOfFire = rateOfFire;
            this.Range = range;
            this.Accuracy = accuracy;
        }
    }
}