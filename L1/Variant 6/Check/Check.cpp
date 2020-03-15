#include <cmath>
#include <iostream>

int main()
{
	double	
		a = { 15.1 },
		alpha = { 1.23 },
		pi = { 3.14 };

	double y1 = {
		std::pow( 
			(1 + a + std::pow(a, 2)) / (2 * a + std::pow(a, 2)) 
				+ 2 
				- (1 - a + std::pow(a, 2)) / (2 * a - std::pow(a, 2)),
			-1)
		* (5 - 2 * std::pow(a, 2)) 
	};

	double y2 = {
		(4 - std::pow(a, 2)) / 2
	};

	double z1 = {
		std::cos(alpha) 
		+ std::sin(alpha) 
		+ std::cos(3 * alpha)
		+ std::sin(3 * alpha)

	};

	double z2 = {
		2 
		* std::sqrt(2) 
		* std::cos(alpha)
		* std::sin(pi / 4 + 2 * alpha)
	};

	std::cout << "y1: " << y1 << std::endl;
	std::cout << "y2: " << y2 << std::endl;
	std::cout << "z1: " << z1 << std::endl;
	std::cout << "z2: " << z2 << std::endl;

	// Pause.
	char c; std::cin.get(c);

	return 0;
}
