#ifndef COAL_H
#define COAL_H

class coal
{
public:
    coal();
    ~coal();
    void setCoalQuantity(double x) { coalQuantity = x; }
    double getCoalQuantity() const { return coalQuantity; }
    void decrementCoal(double x) { coalQuantity -= x; }
private:
    double coalQuantity;
};

#endif // COAL_H
