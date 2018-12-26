#include <iostream>

#include "Poco/MD5Engine.h"
#include "Poco/DigestStream.h"

using namespace std;

int main(int argc, char** argv)
{
	Poco::MD5Engine md5;
	Poco::DigestOutputStream ds(md5);
	ds << "abcdefghijklmnopqrstuvwxyz";
	ds.close();

	cout << Poco::DigestEngine::digestToHex(md5.digest()) << endl;

  return 0;
}