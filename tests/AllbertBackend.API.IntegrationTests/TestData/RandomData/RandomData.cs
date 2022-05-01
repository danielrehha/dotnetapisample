using System;
using System.Collections.Generic;
using System.IO;

namespace AllbertBackend.IntegrationTests.DataManager.RandomData
{
    public static class RandomData
    {
        public static void Initialize()
        {
            var firstNameLines = File.ReadAllLines("TestData/RandomData/first_names.csv");
            foreach (var line in firstNameLines)
            {
                var name = line.Trim();
                FirstNames.Add(name);
            }
            
            var lastNameLines = File.ReadAllLines("TestData/RandomData/last_names.csv");
            foreach (var line in lastNameLines)
            {
                var name = line.Trim();
                LastNames.Add(name);
            }
        }
        
        private static List<string> FirstNames = new List<string>();
        private static List<string> LastNames = new List<string>();
        private static List<string> JobTypes = new List<string>() { "Fodrász", "Borbély", "Asszisztens", "Ügyvéd", "Fogorvos", "Pszichológus"};
        private static List<string> ServiceNames = new List<string>() { "Konzultáció", "Hajvágás", "Fogkőleszedés", "Terápia", "Tanácsadás", "Első konzultáció", "Körömfestés"};

        public static string FirstName()
        {
            Random rand = new Random(DateTime.Now.Millisecond);
            return FirstNames[rand.Next(0, FirstNames.Count - 1)];
        }

        public static string LastName()
        {
            Random rand = new Random(DateTime.Now.Millisecond);
            return LastNames[rand.Next(0, LastNames.Count - 1)];
        }

        public static string JobType()
        {
            Random rand = new Random(DateTime.Now.Millisecond);
            return JobTypes[rand.Next(0, JobTypes.Count - 1)];
        }

        public static Int64 Color()
        {
            return 0xff085cfd;
        }

        public static string ServiceName()
        {
            Random rand = new Random(DateTime.Now.Millisecond);
            return ServiceNames[rand.Next(0, ServiceNames.Count - 1)];
        }
    }
}