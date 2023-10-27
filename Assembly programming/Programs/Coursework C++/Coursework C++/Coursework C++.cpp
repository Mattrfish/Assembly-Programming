#include <iostream>
using namespace std;


void main()
{
    unsigned int i, B[10], A[10] = { 3,2,3,1,7,5,0,8,9,2 };
    for (i = 0; i < 10; i++) {
        
        
        int u = (3 * i + 1) / 5;
        int y = (2 * i + u);
        B[i] = A[i] + 2 * y ;





        cout << "B = " << B[i] << endl;
       // cout << "A = " << A[i] << endl;

    }

    
}