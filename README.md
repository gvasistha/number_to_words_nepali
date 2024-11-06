Number to Words - Nepali

Overview
Number to Words - Nepali is a MySQL function that converts numeric values into Nepali words. This tool is designed to help generate Nepali text representations of numbers, which can be particularly useful in creating financial documents, reports, or educational materials in the Nepali language.

Features
Converts numbers into Nepali words.
Handles large numbers up to the crore level (supporting lakh, thousand, hundred, etc.).
Easy to integrate and use directly in MySQL databases.
Example Usage
Input and Output
Input: 123456
Output: "एक लाख तेईस हजार चार सय छपन्न"
Input: 100100
Output: "एक लाख एक सय"
Installation
Clone the repository:

bash
Copy code
git clone https://github.com/gvasistha/number_to_words_nepali.git
cd number_to_words_nepali
Import the function into your MySQL database:

Open your MySQL client and run the number_to_words_nepali.sql file:
sql
Copy code
SOURCE path/to/number_to_words_nepali.sql;
Usage
Once installed, you can use the function in your MySQL database to convert numbers to Nepali words:

sql
Copy code
SELECT number_to_words_nepali(123456);
Expected Result:
arduino
Copy code
"एक लाख तेईस हजार चार सय छपन्न"
Customization
To support even larger numbers (e.g., अरब, खर्ब), you can modify the function to include additional ranges based on the Nepali numbering system.

Contributing
Contributions are welcome! If you’d like to enhance the functionality or report an issue, feel free to open a pull request or issue in the repository.

License
This project is licensed under the MIT License. See the LICENSE file for details.
