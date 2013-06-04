#include <iostream>
//#include "gtest/gtest.h"

using namespace std;

class Tank
{
public:
	Tank();
	~Tank();

	void shoot(int);
	void moveToPosition(float[]);
private:
	float position[2];
};

Tank::Tank() {
	cout<<"create tank";
	position[0] = 0;
	position[1] = 0;
}

Tank::~Tank() {
	cout<<"Destroy tank\n";
}

void Tank::shoot(int count) {
	int i = 0;
	for (int i = 0; i <= count; ++i) {
		cout << "Shoot! \n";
	}
}

void Tank::moveToPosition(float newPosition[2]) {
	cout<<"Tank move from position ("<<position[0]<<';'<<position[1]<<")\n";
	position[0] = newPosition[0];
	position[1] = newPosition[1];
	cout<<"Tank move to position ("<<position[0]<<';'<<position[1]<<")\n";
}

int main(int argc, char **argv) {
	cout<<"-------------------\n";	
	Tank tank = Tank();
	tank.shoot(3);
	float newPosition[2] = {23.0, 25.3};
	tank.moveToPosition(newPosition);
	tank.shoot(5);

	return 0;
}
