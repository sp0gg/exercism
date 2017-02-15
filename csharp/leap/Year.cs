namespace Exercism.Leap
{
    internal static class Year
    {
        public static bool IsLeap(int year)
        {
            if (year % 4 == 0)
            {
                return year % 400 == 0 || year % 100 != 0;
            }
            return false;
        }
    }

}
