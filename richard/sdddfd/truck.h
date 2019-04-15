#ifndef TRUCK_H
#define TRUCK_H

class truck
{
public:
    truck(double M, float T): time(T), mass(M){}
    float getTime() const { return time; }
    double getMass() const { return mass; }
    truck();
    ~truck();
private:
    float time;
    double mass;
};

#endif // TRUCK_H
