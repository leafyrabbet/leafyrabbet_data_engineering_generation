import std.conv;
import std.json;
import std.stdio;
import std.algorithm;

string s = `{
	"language": "D",
	"rating": 3.5,
	"code": "42"
}`;

version(unittest)
{
}


void generate_json()
in{}
out{}
body
{
	return;
}
unittest
{
	assert(std.algorithm.find(s, "D"));
}


void main()
in{}
out{}
body
{
	std.json.JSONValue j = std.json.parseJSON(s);

	std.stdio.writeln(
		j["language"].str
	);

	generate_json();

	return;
}
unittest
{
	assert(std.algorithm.find(s, "42"));
}
