#ifndef TRUCK_H
#define TRUCK_H

class truck
{
public:
    truck();
    truck (double L, float T) : loadCapacity(L), loadingTime(T) {}
    ~truck();
    double getLoadCapacity() const { return loadCapacity; }
    float getLoadingTime() const { return loadingTime; }
private:
    double loadCapacity;
    float loadingTime;
};

#endif // TRUCK_H
