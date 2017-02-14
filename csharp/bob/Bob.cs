using static System.Text.RegularExpressions.Regex;

namespace Exercism.Bob
{
    public static class Bob
    {
        public static string Hey(string phrase)
        {
            var filteredPhrase = phrase.Trim();

            return DetermineResponse(filteredPhrase);
        }

        private static string DetermineResponse(string phrase)
        {
            if (IsShouting(phrase))
            {
                return "Whoa, chill out!";
            }
            if (IsQuestion(phrase))
            {
                return "Sure.";
            }
            if (IsSilent(phrase))
            {
                return "Fine. Be that way!";
            }
            return "Whatever.";
        }

        private static bool IsShouting(string filteredPhrase)
        {
            return !IsMatch(filteredPhrase, @"[a-z]") && IsMatch(filteredPhrase, @"[A-Z]");
        }

        private static bool IsQuestion(string filteredPhrase)
        {
            return filteredPhrase.EndsWith("?");
        }

        private static bool IsSilent(string filteredPhrase)
        {
            return filteredPhrase.Equals(string.Empty);
        }
    }
}
