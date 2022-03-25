#include <iostream>
using namespace std;

int main()
{
    int count, sides;
    cout << "Count: ";
    cin >> count;
    cout << "Sides: ";
    cin >> sides;

    srand(time(NULL));

    int sum = 0;

    for (size_t i = 0; i < count; i++)
    {
        int random = 1 + rand() % sides;
        cout << random << "\n";
        sum += random;
    }

    cout << "Sum: " << sum << "\n";
}