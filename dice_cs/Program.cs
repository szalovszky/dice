using System;

namespace dobokocka
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Count: ");
            int count = int.Parse(Console.ReadLine());
            Console.Write("Sides: ");
            int sides = int.Parse(Console.ReadLine());

            Random rnd = new Random();
            int sum = 0;

            for (int i = 0; i < count; i++) {
                int rand = rnd.Next(1, sides - 1);
                Console.WriteLine(rand.ToString());
                sum += rand;
            }

            Console.WriteLine("Sum: " + sum.ToString());
        }
    }
}
