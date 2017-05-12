import datetime
import pytz


#create list and apend %H in list
#use this website for help! http://www.thegeekstuff.com/2013/06/python-list/?utm_source=feedly

city_list = ['Portland Headquarters','NYC Branch','London Branch']
print(city_list[2]) #just to test if it worked...and it did :)


#these are my timezomes
dt_pac = datetime.datetime.now(tz=pytz.timezone('US/Pacific'))
print(dt_pac.strftime('%H'))
pac_time =int(dt_pac.strftime('%H')) #make sure the values you're appending are int not string


dt_est = datetime.datetime.now(tz=pytz.timezone('US/Eastern'))
print(dt_est.strftime('%H'))
est_time =int(dt_est.strftime('%H')) 

dt_lon = datetime.datetime.now(tz=pytz.timezone('Europe/London'))
print(dt_lon.strftime('%H'))
lon_time =int(dt_lon.strftime('%H')) 

#this appends time into city_list?
city_list.append(['Portland Headquarters', pac_time])
city_list.append(['NYC Branch', est_time])
city_list.append(['London Banch', lon_time])

#convert strings into integers int(dt_pac)

for i in list:
    if (i > 9 and i < 21):
        print(i +'open')
    else:
        print(i+'closed')










##dt_utcnow = datetime.datetime.now(tz=pytz.UTC)
##print(dt_utcnow)

#dt_mtn = datetime.datetime.now()#gets time now
#print(dt_mtn)

#dt_mtn = dt_utcnow.astimezone(pytz.timezone('US/Mountain'))
#print(dt_mtn)

#for tz in pytz.all_timezones:
#    print(tz)

##dt_utcnow = datetime.datetime.utcnow().replace(tzinfo=pytz.UTC)
##print(dt_utcnow)
##
##dt = datetime.datetime(2016,7,27,12,30,45,tzinfo=pytz.UTC)
##print(dt)


