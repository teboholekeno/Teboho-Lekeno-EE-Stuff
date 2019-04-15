#include <cmath>
#include <iostream>
#include <vector>

using namespace std;

struct Names {
    string startName = "", endName = "";
    int weightDifferent;
};

struct Name {
    string name = "";
    int weigth = 0;
};

class Graph
{
public:
    Graph();
    void collectTwoWords();
    void TraverseGraph();
    void collectList();
    void addName(string);
    int extractWeight(string);
    void display() const;
    int difference(string, string);

private:
    Names names;
    vector<Name> graph;
    vector<string> minimumSpanning;
};

int main()
{
    Graph graph;
    graph.TraverseGraph();
    graph.display();

    return 0;
}

Graph::Graph()
{
    collectTwoWords();
    collectList();
}

void Graph::collectTwoWords()
{
    string Name;
    int tracker(0);

    cin >> Name;

    for(int counter = 0; counter < Name.size(); counter++) {
        if(Name.at(counter) != ',') {
            names.startName.push_back(Name.at(counter));
        } else {
            tracker = counter;
            break;
        }
    }

    for(int counter = tracker + 1; counter < Name.size(); counter++)
        names.endName.push_back(Name.at(counter));
}

void Graph::collectList()
{
    string mystring;

    while(true) {
        cin >> mystring;

        if(mystring.size() == names.endName.size())
            addName(mystring);
        else if(mystring == "-1")
            break;
    }

    names.weightDifferent = extractWeight(names.startName);
}

void Graph::addName(string name)
{
    Name newName;
    newName.name = name;

    for(int counter = 0; counter < name.size(); counter++) {
        if(newName.name.at(counter) != names.endName.at(counter))
            newName.weigth += 1;
    }

    if(newName.weigth <= extractWeight(names.startName)) {
        graph.push_back(newName);
    }
}

int Graph::extractWeight(string name)
{
    int weight(0);

    for(int counter = 0; counter < name.size(); counter++) {
        if(names.startName.at(counter) != names.endName.at(counter))
            weight += 1;
    }

    return weight;
}

void Graph::display() const
{
    for(int counter = 0; counter < minimumSpanning.size(); counter++) {
        cout << minimumSpanning.at(counter);

        if(counter != minimumSpanning.size() - 1)
            cout << "->";
    }
    
    cout << endl;
}

void Graph::TraverseGraph()
{
    minimumSpanning.push_back(names.startName);

    while(true) {
        for(int counter = 0; counter < graph.size(); counter++) {

            if(difference(names.startName, graph.at(counter).name) == 1 &&
                graph.at(counter).weigth == extractWeight(names.startName) - 1) {
                minimumSpanning.push_back(graph.at(counter).name);
                names.startName = graph.at(counter).name;
                counter = graph.size();
            }
        }

        if(names.startName == names.endName) {
            break;
        }
    }
}

int Graph::difference(string start, string next)
{
    int dif(0);

    if(start.size() == next.size()) {
        for(int counter = 0; counter < start.size(); counter++) {
            if(start.at(counter) != next.at(counter)) {
                dif += 1;
            }
        }
    } else
        cout << "unequal sizes" << endl;

    return dif;
}