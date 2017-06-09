class Casting{
public int sub(int x,double y){
double z=x-y;
System.out.println(z); return 0;
}
public void sub(long x,double y){
double d=(double)x-y;
System.out.println(d);
}}
class MainCasting{
public static void main(String args[]){
Casting ct=new Casting();
ct.sub(8,2.0);
ct.sub(9,7.0);
}}