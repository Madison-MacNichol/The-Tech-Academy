import datetime
import pytz

def main():          
    #Portland Headquarters Time
    dt_pac = datetime.datetime.now(tz=pytz.timezone('US/Pacific'))
    i =int(dt_pac.strftime('%H'+'%M')) #making integers into strings
    def check_time(i):
        if (i > 900 and i < 2100):
            print('Its currently: '+ str(i)+' in Portland. The Portland Headquarters is open!')
        else:
            print('Sorry, its '+str(i)+' in Portland. The Portland Headquarters is closed.')

    #NYC Branch Time
    dt_est = datetime.datetime.now(tz=pytz.timezone('US/Eastern'))
    j =int(dt_est.strftime('%H'+'%M'))
    def check_time1(j):
        if (j > 900 and j < 2100):
            print('Its currently: '+str(j)+' in NYC. The NYC Branch is open!')
        else:
            print('Sorry, its '+str(j)+' in NYC. The NYC Branch is closed.')

    #London Branch Time
    dt_lon = datetime.datetime.now(tz=pytz.timezone('Europe/London'))
    k =int(dt_lon.strftime('%H'+'%M'))
    def check_time2(k):
        if (k > 900 and k < 2100):
            print('Its currently: '+str(k)+' in London. The London Branch is open!')
        else:
            print('Sorry, its '+str(k)+' in London. The London Branch is closed.')

    check_time(i)
    check_time1(j)
    check_time2(k)

if __name__ == "__main__":
    main()
    





