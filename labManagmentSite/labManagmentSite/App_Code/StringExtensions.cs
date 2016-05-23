using static System.Char;

namespace App.Extensions
{
    public static class StringExtensions
    {
        public static string ToHtmlFormula(this string formula)
        {
            string result = string.Empty;
            char lastChar = ' ';

            foreach (char c in formula)
            {
                if (IsNumber(c) && (lastChar == ')' || IsLetter(lastChar)))
                {
                    result += string.Concat("<sub>", c, "</sub>");
                }
                else
                {
                    result += c;
                }

                lastChar = c;
            }

            return result;
        }
    }
}