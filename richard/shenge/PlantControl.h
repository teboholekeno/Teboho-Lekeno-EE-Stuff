#ifndef PLANTCONTROL_H
#define PLANTCONTROL_H
#include <vector>
#include "truck.h"

class PlantControl
{
public:
    PlantControl();
    ~PlantControl();
    void run();
private:
    std::vector<truck> companyTrucks;
};

#endif // PLANTCONTROL_H
