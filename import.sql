BEGIN;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA pg_catalog;

DROP TABLE IF EXISTS "beneficiary";
DROP TABLE IF EXISTS "benefit";
DROP TABLE IF EXISTS "contributions";
DROP TABLE IF EXISTS "earnings";
DROP TABLE IF EXISTS "memberdata";
DROP TABLE IF EXISTS "service";

------------------------------------------------
CREATE TABLE contributions
(
    "MemberID"  VARCHAR(8000),
    "Division"  VARCHAR(8000),
    "SIN"       VARCHAR(8000),
    "lastName"  VARCHAR(8000),
    "firstName" VARCHAR(8000),
    "2010cont"  VARCHAR(8000),
    "2010cwi"   VARCHAR(8000),
    "2011cont"  VARCHAR(8000),
    "2011cwi"   VARCHAR(8000),
    "2012cont"  VARCHAR(8000),
    "2012cwi"   VARCHAR(8000),
    "2013cont"  VARCHAR(8000),
    "2013cwi"   VARCHAR(8000),
    "2014cont"  VARCHAR(8000),
    "2014cwi"   VARCHAR(8000),
    "2015cont"  VARCHAR(8000),
    "2015cwi"   VARCHAR(8000),
    "2016cont"  VARCHAR(8000),
    "2016cwi"   VARCHAR(8000)
);

INSERT INTO public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi",
                                  "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont",
                                  "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi")
VALUES ('702-712-853', 'Testdivision', '867-668-314', 'Dvquaan', 'Ftacn', '1904.96', '1920.92', '2186.52', '4158.96',
        '2186.52', '6428.400000000001', '2369.53', '8908.3', '2340.8', '11395.23', '2399.2', '13951.859999999999',
        '2414.1400000000003', '16543.32');
INSERT INTO public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi",
                                  "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont",
                                  "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi")
VALUES ('941-801-789', 'Testdivision', '401-087-846', 'Nyjgjmaz', 'Wtacyq', '2388.52', '2410.45', '2553.79', '5027.26',
        '2624.02', '7751.359999999999', '2843.4399999999996', '10727.789999999999', '2809.06', '13712.75',
        '2879.0699999999993', '16781.22', '2896.9699999999993', '19891.43');
INSERT INTO public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi",
                                  "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont",
                                  "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi")
VALUES ('206-876-800', 'Testdivision', '790-798-609', 'Fcpjbeyw', 'Fzempb', null, null, null, null, null, null, null,
        '0', null, null, '953.21', '955.68', '2317.4300000000007', '3297.81');
INSERT INTO public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi",
                                  "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont",
                                  "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi")
VALUES ('740-177-571', 'Testdivision', '851-158-840', 'Nrpzmydv', 'Geraxs', '2084.52', '2103.66', '2099.07',
        '4256.620000000001', '2099.07', '6439.460000000001', '2274.7', '8824.009999999998', '2247.25', '11215.49',
        '2416.63', '13787.410000000002', '2655.3100000000004', '16619.519999999997');
INSERT INTO public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi",
                                  "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont",
                                  "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi")
VALUES ('298-898-864', 'Testdivision', '936-265-665', 'Ctdhvstx', 'Xnqjv', '2171.4', '2191.34', '2335.03', '4583.77',
        '2405.14', '7080.26', '2606.4100000000003', '9808.21', '2574.93', '12544.01', '2638.960000000001',
        '15356.259999999998', '2655.3100000000004', '18206.730000000003');
INSERT INTO public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi",
                                  "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont",
                                  "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi")
VALUES ('876-454-565', 'Testdivision', '968-211-795', 'Mywykgvw', 'Cypjb', '2171.4', '2191.34', '2186.52', '4434',
        '2186.52', '6707.79', '2369.53', '9191.74', '2340.8', '11682.779999999999', '2399.2', '14242.999999999998',
        '2414.1400000000003', '16837.859999999997');
INSERT INTO public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi",
                                  "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont",
                                  "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi")
VALUES ('154-768-914', 'Testdivision', '619-006-312', 'Kxunmxwd', 'Kkeyp', '1931.88', '1949.62', '1945.36', '3944.93',
        '1945.36', '5967.93', '2108.06', '8177.790000000001', '2082.61', '10394.070000000002', '2134.37',
        '12671.699999999999', '2147.5699999999997', '14980.06');
INSERT INTO public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi",
                                  "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont",
                                  "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi")
VALUES ('115-272-495', 'Testdivision', '720-909-026', 'Tjuxpykn', 'Wxxz', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0');
INSERT INTO public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi",
                                  "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont",
                                  "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi")
VALUES ('846-973-839', 'Testdivision', '694-678-152', 'Fymgtkc', 'Abhuy', '2388.52', '2410.45', '2405.15',
        '4877.349999999999', '2405.14', '7378.48', '2606.42', '10110.77', '2574.93', '12850.96', '2563.03', '15590.64',
        '0', '0');
INSERT INTO public.contributions ("MemberID", "Division", "SIN", "lastName", "firstName", "2010cont", "2010cwi",
                                  "2011cont", "2011cwi", "2012cont", "2012cwi", "2013cont", "2013cwi", "2014cont",
                                  "2014cwi", "2015cont", "2015cwi", "2016cont", "2016cwi")
VALUES ('524-861-703', 'Testdivision', '419-012-249', 'Qbumunz', 'Rrhw', '2605.8', '2629.73', '1544.68', '4193.42', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0');

------------------------------------------------
CREATE TABLE earnings
(
    "MemberID"    VARCHAR(8000),
    "2016earning" VARCHAR(8000),
    "2015earning" VARCHAR(8000),
    "2014earning" VARCHAR(8000),
    "2013earning" VARCHAR(8000),
    "2012earning" VARCHAR(8000),
    "2011earning" VARCHAR(8000),
    "2010earning" VARCHAR(8000),
    "2009earning" VARCHAR(8000),
    "2008earning" VARCHAR(8000),
    "2007earning" VARCHAR(8000),
    "2006earning" VARCHAR(8000),
    "2005earning" VARCHAR(8000),
    "2004earning" VARCHAR(8000),
    "2003earning" VARCHAR(8000),
    "2002earning" VARCHAR(8000),
    "2001earning" VARCHAR(8000),
    "2000earning" VARCHAR(8000),
    "1999earning" VARCHAR(8000),
    "1998earning" VARCHAR(8000),
    "1997earning" VARCHAR(8000),
    "1996earning" VARCHAR(8000),
    "1995earning" VARCHAR(8000),
    "1994earning" VARCHAR(8000),
    "1993earning" VARCHAR(8000),
    "1992earning" VARCHAR(8000),
    "1991earning" VARCHAR(8000),
    "1990earning" VARCHAR(8000),
    "1989earning" VARCHAR(8000),
    "1988earning" VARCHAR(8000),
    "1987earning" VARCHAR(8000),
    "1986earning" VARCHAR(8000),
    "1985earning" VARCHAR(8000),
    "1984earning" VARCHAR(8000),
    "1983earning" VARCHAR(8000),
    "1982earning" VARCHAR(8000),
    "1981earning" VARCHAR(8000),
    "1980earning" VARCHAR(8000),
    "1979earning" VARCHAR(8000)
);

INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('623-456-334', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('705-272-661', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('324-852-903', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('927-941-208', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '3456', null, null, null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('796-877-009', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '29096.26', '42089.68', '40911.46', '40502.34', '41244.06', '38544.78',
        '38029.58', '7595.06', null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('607-994-884', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '74261.64', '65894.06', '58162.73', '56840.81', '53361.94', '49496.83', '46958.16', '43028.72', '40369.04',
        '38259.22', '34243.73', '34871.55', '32158.28', '31623.16', '29282.93', '25992.76', '21359.32', '19337.03',
        '15961.59');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('428-706-062', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('941-925-959', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '76889.06', '72704.4', '70590.6', '69036.48', '68616', '66858.36', '63629.22', '60323.42', '57589.8', '55982.4',
        '55450.4', '55236.48', '48183.36', '10000.32', null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('953-798-274', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('917-599-064', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('390-964-911', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('553-246-781', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('132-895-007', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('206-876-800', '77248.03', '31773.72', null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('631-190-247', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '16540.76', '50279', '47999.6', '46656', '46119.2', '47058', '44043', '43483',
        '41336.5', '38582.3', '26553.8', null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('475-976-407', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1063.3', '0', '70831.6', '65402', '65402', '65090',
        '63824.5', '62884.5', '62884.5', '62884.5', '64774.5', '60587', '58825.5', '57530.4', '52933.12', '50090.33',
        '47750.5', '44122.82', '40594.96', '38241.52', '33058.98', '34879.6', '32936.96', '31231.47', '29402.29',
        '26563.96', '21311.72', '19416.39', '16888.8');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('702-712-853', '80468.31', '79972.11', '78028.8', '78982.73', '72885.6', '72885.6', '63499.25', null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('941-801-789', '96561.76', '95966.26', '93634.22', '94778.79', '87463.25', '85125.24', '79619.01', '79002.94',
        '76139.25', '75693.15', '68610.4', '65402', '65402', '65402', '65090', '63824.5', '62884.5', '62884.5',
        '57520.34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('740-177-571', '88514.24', '80555.4', '74906.11', '75821.6', '69969.54', '69969.54', '69485.07', '68947.39',
        '66448.8', '6282.43', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('298-898-864', '88514.24', '87968.46', '85830.98', '86880.03', '80174.16', '77836.32', '72380.97', '71821.32',
        '69217.5', '68959.4', '65402', '65402', '65402', '65402', '65090', '62353.24', '5339.25', null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('876-454-565', '80468.31', '79972.11', '78028.8', '78982.73', '72885.6', '72885.6', '72380.97', '71821.32',
        '69217.5', '68886.32', '65402', '59507.79', '59371.36', '59262.23', '58897.38', '57737.56', '56733.18',
        '56799.04', '56272.14', '58235.61', '54349.2', '53191.17', '51510.79', '46391.86', '43040.72', '39170.4', null,
        null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('154-768-914', '71588.69', '71147.3', '69418.62', '70267.14', '64843.38', '64843.38', '64394.44', '63896.42',
        '61580.2', '61197.56', '58170.68', '34119.8', null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('120-351-371', '0', '0', '0', '0', '0', '0', '0', '0', '0', '48078.62', '62785.92', '63373.3', '63476.96',
        '63718.82', '62440.91', '61250.5', '64690.95', '69172.95', '68973.77', '60983.22', '50923.03', '45460.4',
        '35241.92', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('419-024-642', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '4271.4', '64774.5', '44928', null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('115-272-495', '0', '0', '0', '0', '0', '0', '0', '5034', '62975.34', null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('820-789-413', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('430-848-182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '34847.66', '57530.4', '57180', '55715.3', '53026.76', '50279', '47999.6', '46656', '46119.2',
        '47058', '44043', '43483', '41336.5', '37171.5', '7410', null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('353-869-532', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('685-225-555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '61303.21', '37414.3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('364-241-826', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12631.2', '43483', '38172.5', '38582.3', '34336.9',
        '24380', '24380');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('808-161-768', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '41015.54', '55385.23', null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('994-934-645', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2008', '24840', '24380');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('103-499-640', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '5000', '27500', '32963.6', '52179.6', '49603.8', '46299',
        '41164.12', '20010', null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('898-862-347', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '61016.02', '55715.3', '53026.76', '50279', '47999.6', '46656', '46292', '47058', '44043',
        '43483', '41336.5', '38582.3', '34336.9', '24380', '24380');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('267-970-342', '0', '0', '0', '0', '0', '0', '0', '0', '0', '50495.79', '68733.8', '71942.2', '71942.2',
        '71942.2', '71599', '70206.95', '69172.95', '66135.51', '62884.5', '64774.5', '60587', '58825.5', '57530.4',
        '57180', '55715.3', '36953.78', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('846-973-839', '0', '85436.62', '85830.98', '86880.03', '80174.16', '80174.16', '79619.01', '79002.94',
        '76139.25', '75855.34', '71942.2', '71942.2', '71942.2', '71942.2', '71599', '70206.95', '64856.95', '60374.95',
        '55818.35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('524-861-703', '0', '0', '0', '0', '0', '51487.8', '86857.57', '86185.48', '83061', '82751.28', '78482.4',
        '78482.4', '78482.4', '78482.4', '78108', '76589.4', '75461.4', '75461.4', '70952.7', '71251.95', '66645.7',
        '64708.05', '63283.44', '62898', '61286.83', '58326.81', '55296.4', '52613.75', '46656', '46119.2', '47058',
        '44043', '43483', '41336.5', '38582.3', '28955.8', null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('835-809-502', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('182-718-102', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13881.8', '34336.9', '24850',
        '6440');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('239-041-067', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '13613.4', '24380', '24380');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('160-543-312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '11559.07', '22573.46', '33572.97', '34324.03', '31767.56', '31184.03',
        '28672.3', '25493.96', '19154.61', '7762.91', null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('861-577-208', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6095');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('866-168-397', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('189-584-374', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4155', null, null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('555-768-345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '83837.09', '64708.05', '63283.44', '62898', '61286.83', '58326.81', '55296.4', '50457.41', '46656',
        '46292', '47058', '44043', '43483', '21989.8', null, null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('861-598-318', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '21620', '9200');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('717-070-180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '3350.4', '6700.8', null, null, null, null, null, null, null, null, null, null, null, null, null,
        null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('451-886-988', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6019.1', '3606.94');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('901-976-707', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '825.44');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('992-132-747', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '54104.4', '25628.4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null);
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('153-197-290', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1914.15');
INSERT INTO public.earnings ("MemberID", "2016earning", "2015earning", "2014earning", "2013earning", "2012earning",
                             "2011earning", "2010earning", "2009earning", "2008earning", "2007earning", "2006earning",
                             "2005earning", "2004earning", "2003earning", "2002earning", "2001earning", "2000earning",
                             "1999earning", "1998earning", "1997earning", "1996earning", "1995earning", "1994earning",
                             "1993earning", "1992earning", "1991earning", "1990earning", "1989earning", "1988earning",
                             "1987earning", "1986earning", "1985earning", "1984earning", "1983earning", "1982earning",
                             "1981earning", "1980earning", "1979earning")
VALUES ('433-044-867', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null,
        null, null, null, null);

------------------------------------------------
CREATE TABLE memberdata
(
    "MemberID"                     VARCHAR(8000),
    "planName"                     VARCHAR(8000),
    "Division"                     VARCHAR(8000),
    "SIN"                          VARCHAR(8000),
    "name"                         VARCHAR(8000),
    "status"                       VARCHAR(8000),
    "substatus"                    VARCHAR(8000),
    "gender"                       VARCHAR(8000),
    "statusDate"                   VARCHAR(8000),
    "spouseType"                   VARCHAR(8000),
    "language"                     VARCHAR(8000),
    "dateOfBirth"                  VARCHAR(8000),
    "dateOfHire"                   VARCHAR(8000),
    "dateOfEntry"                  VARCHAR(8000),
    "normalRetirementDate"         VARCHAR(8000),
    "earlyRetirementDate"          VARCHAR(8000),
    "earlyUnreducedRetirementDate" VARCHAR(8000),
    "vested"                       VARCHAR(8000),
    "latestVestingDate"            VARCHAR(8000)
);

INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('623-456-334', 'Testplan', 'Testdivision', '376-575-848', 'Wfmjqu, Xearnz', 'Terminated',
        'No Benefit, Not Vested', 'Female', '28474', 'Single', 'English', '18125', '28474', '28474', '41883', '38231',
        '41883', 'Unknown', '32143');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('705-272-661', 'Testplan', 'Testdivision', '447-158-353', 'Uacwcjzv, Hyzse', 'Spouse', 'Locked-In Transfer',
        'Male', '14611', 'Single', 'English', '18398', '14611', '14611', '40330', '14611', '14611', 'Unknown',
        'Unknown');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('324-852-903', 'Testplan', 'Testdivision', '269-342-812', 'Tfmmjw, Hvtbt', 'Benefit Ceased', 'N/A', 'Female',
        '37560', 'Single', 'English', '28907', '14611', '14611', '50830', '14611', '14611', 'Unknown', 'Unknown');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('927-941-208', 'Testplan', 'Testdivision', '552-125-838', 'Tjqhksan, Zdgva', 'Deferred Term', 'Cash Paid-out',
        'Male', '36891', 'Single', 'English', '17078', '31656', '31656', '39022', '37196', '39022', '39022', '32417');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('796-877-009', 'Testplan', 'Testdivision', '640-096-056', 'Yuenczj, Nsgvhz', 'Deferred Term',
        'Locked-In Transfer', 'Female', '34334', 'Single', 'English', '21139', '30604', '30604', '43070', '41244',
        '44896', 'Unknown', '34274');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('607-994-884', 'Testplan', 'Testdivision', '876-984-481', 'Xepmquz, Svhqsn', 'Deferred Term',
        'Locked-In Transfer', 'Female', '36525', 'Common Law', 'English', '19895', '28856', '28856', '41821', '39995',
        '41821', '41821', '29618');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('428-706-062', 'Testplan', 'Testdivision', '476-532-433', 'Wjnrsaz, Vzedpm', 'Death', 'N/A', 'Male', '14611',
        'Single', 'English', '7564', '14611', '14611', '29495', '14611', '14611', 'Unknown', 'Unknown');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('941-925-959', 'Testplan', 'Testdivision', '741-762-069', 'Zwhtwbp, Wwjknt', 'Death', 'N/A', 'Male', '41110',
        'Married', 'English', '13379', '30970', '30970', '35309', '33482', '37135', 'Unknown', '34639');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('953-798-274', 'Testplan', 'Testdivision', '423-232-095', 'Abukpgj, Cgexdj', 'Death', 'N/A', 'Female', '40360',
        'Single', 'English', '10270', '14611', '14611', '32203', '14611', '14611', 'Unknown', 'Unknown');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('917-599-064', 'Testplan', 'Testdivision', '198-824-037', 'Swxkanj, Xpxqfc', 'Death', 'Plan Changed', 'Male',
        '38280', 'Single', 'English', '10486', '21610', '27030', '32417', '30590', '34243', 'Unknown', '27061');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('390-964-911', 'Testplan', 'Testdivision', '950-132-611', 'Uvxvxnb, Gukjq', 'Retirement', 'N/A', 'Female',
        '14611', 'Single', 'English', '16747', '14611', '14611', '38687', '36861', '38687', 'Unknown', '15342');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('553-246-781', 'Testplan', 'Testdivision', '814-516-768', 'Dczcvszb, Thkmxe', 'Retirement', 'N/A', 'Female',
        '41122', 'Single', 'English', '13503', '33604', '33604', '35431', '33604', '35431', 'Unknown', '34335');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('132-895-007', 'Testplan', 'Testdivision', '233-702-111', 'Gyusk, Xbmavx', 'Retirement', 'N/A', 'Female',
        '27030', 'Single', 'English', '15095', '27030', '27030', '37012', '35186', '37012', 'Unknown', '27760');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('631-190-247', 'Testplan', 'Testdivision', '963-205-235', 'Kujqwesp, Xnqnw', 'Early Retirement', 'N/A',
        'Female', '35231', 'Single', 'English', '14923', '29660', '29660', '36861', '35034', '38687', 'Unknown',
        '33329');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('475-976-407', 'Testplan', 'Testdivision', '818-805-330', 'Yqbxqjse, Jfqcg', 'Early Retirement', 'N/A',
        'Female', '38718', 'Single', 'English', '17449', '27303', '27303', '39387', '37561', '39387', '39387', '28034');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('702-712-853', 'Testplan', 'Testdivision', '867-668-314', 'Dvquaan, Ftacn', 'Active', 'N/A', 'Male', '40210',
        'Common Law', 'English', '22690', '40210', '40210', '44621', '42795', '44621', '44621', '40940');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('941-801-789', 'Testplan', 'Testdivision', '401-087-846', 'Nyjgjmaz, Wtacyq', 'Active', 'N/A', 'Male', '35796',
        'Married', 'English', '23883', '35796', '35796', '45809', '43983', '45809', '45809', '36526');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('206-876-800', 'Testplan', 'Testdivision', '790-798-609', 'Fcpjbeyw, Fzempb', 'Active', 'N/A', 'Female',
        '42217', 'Married', 'English', '19358', '42217', '42217', '41275', '42217', '42217', '42736', '42948');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('740-177-571', 'Testplan', 'Testdivision', '851-158-840', 'Nrpzmydv, Geraxs', 'Active', 'N/A', 'Female',
        '39387', 'Married', 'English', '19552', '39387', '39387', '41487', '40118', '41487', '42736', '40118');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('298-898-864', 'Testplan', 'Testdivision', '936-265-665', 'Ctdhvstx, Xnqjv', 'Active', 'N/A', 'Male', '36861',
        'Single', 'English', '26197', '36861', '36861', '48122', '46296', '48122', '48122', '37591');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('876-454-565', 'Testplan', 'Testdivision', '968-211-795', 'Mywykgvw, Cypjb', 'Active', 'N/A', 'Female', '33239',
        'Married', 'English', '21690', '33239', '33239', '43617', '41791', '43617', '43617', '33970');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('154-768-914', 'Testplan', 'Testdivision', '619-006-312', 'Kxunmxwd, Kkeyp', 'Active', 'N/A', 'Female', '38473',
        'Married', 'English', '24778', '38473', '38473', '46722', '44896', '46722', '46722', '39203');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('120-351-371', 'Testplan', 'Testdivision', '411-153-016', 'Edermj, Edchs', 'Deferred Term', 'Cash Paid-out',
        'Female', '40178', 'Married', 'English', '25019', '34394', '34394', '46935', '45108', '46935', '46935',
        '35125');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('419-024-642', 'Testplan', 'Testdivision', '510-112-220', 'Suvjmd, Cdgpqe', 'Deferred Term', 'Cash Paid-out',
        'Male', '36891', 'Married', 'English', '20854', '35156', '35156', '42795', '40969', '42795', '42795', '35916');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('115-272-495', 'Testplan', 'Testdivision', '720-909-026', 'Tjuxpykn, Wxxz', 'Deferred Term', 'Cash Paid-out',
        'Male', '41274', 'Single', 'English', '27734', '39448', '39448', '49675', '47849', '49675', '49675', '40179');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('820-789-413', 'Testplan', 'Testdivision', '118-762-693', 'Fypxwdwp, Nesrjy', 'Death', 'N/A', 'Female', '41084',
        'Single', 'English', '11672', '33604', '33604', '33604', '31778', '33604', 'Unknown', '791');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('430-848-182', 'Testplan', 'Testdivision', '400-098-779', 'Byaveupt, Qzbgty', 'Death', 'N/A', 'Male', '39575',
        'Married', 'English', '11807', '29874', '29874', '33725', '31898', '35551', 'Unknown', '33543');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('353-869-532', 'Testplan', 'Testdivision', '262-864-578', 'Ervkkeed, Htwdf', 'Death', 'N/A', 'Female', '41983',
        'Single', 'English', '17476', '14611', '14611', '39417', '14611', '14611', 'Unknown', 'Unknown');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('685-225-555', 'Testplan', 'Testdivision', '809-699-735', 'Jnbkgbbn, Wrbgmd', 'Death', 'N/A', 'Male', '35749',
        'Single', 'English', '16146', '35200', '35200', '39904', '36251', '39904', 'Unknown', '35947');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('364-241-826', 'Testplan', 'Testdivision', '666-629-001', 'Pbusua, Yfddew', 'Death', 'N/A', 'Male', '41645',
        'Married', 'English', '12923', '24487', '27044', '34851', '33025', '36678', 'Unknown', '28157');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('808-161-768', 'Testplan', 'Testdivision', '365-595-211', 'Hfvas, Bumygp', 'Death', 'N/A', 'Female', '35718',
        'Single', 'English', '18824', '35079', '35079', '42583', '38930', '42583', 'Unknown', '35827');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('994-934-645', 'Testplan', 'Testdivision', '182-172-216', 'Busrvrfj, Fgjapp', 'Death', 'N/A', 'Female', '31578',
        'Single', 'English', '10211', '28536', '28536', '33970', '30317', '33970', 'Unknown', '32203');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('103-499-640', 'Testplan', 'Testdivision', '462-516-368', 'Etfbeht, Etgra', 'Death', 'N/A', 'Male', '38280',
        'Married', 'English', '10486', '29295', '29295', '32417', '30590', '34243', 'Unknown', '32964');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('898-862-347', 'Testplan', 'Testdivision', '475-970-479', 'Bxqdpcue, Tzqzdz', 'Death', 'N/A', 'Male', '34592',
        'Single', 'English', '10455', '27013', '27044', '34213', '30560', '34213', 'Unknown', '30682');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('267-970-342', 'Testplan', 'Testdivision', '672-660-388', 'Zsjbfrcd, Wmwhk', 'Early Retirement', 'N/A', 'Male',
        '39448', 'Common Law', 'English', '19338', '33329', '33329', '41275', '39448', '41275', '41275', '34060');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('846-973-839', 'Testplan', 'Testdivision', '694-678-152', 'Fymgtkc, Abhuy', 'Early Retirement', 'N/A', 'Female',
        '42370', 'Married', 'English', '20637', '35827', '35827', '42552', '40725', '42552', '42552', '36557');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('524-861-703', 'Testplan', 'Testdivision', '419-012-249', 'Qbumunz, Rrhw', 'Normal Retirement', 'N/A', 'Male',
        '40664', 'Married', 'English', '17281', '29618', '29618', '39203', '37377', '39203', '40544', '30348');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('835-809-502', 'Testplan', 'Testdivision', '221-190-113', 'Ffdmaruu, Pbwpdb', 'Normal Retirement', 'N/A',
        'Male', '36465', 'Married', 'English', '14521', '27044', '27044', '36465', '34639', '38292', 'Unknown',
        '30713');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('182-718-102', 'Testplan', 'Testdivision', '740-977-812', 'Dbzucqbx, Qqtbbt', 'Normal Retirement', 'N/A',
        'Male', '34408', 'Single', 'English', '12387', '27713', '27713', '34304', '32478', '36130', 'Unknown', '31382');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('239-041-067', 'Testplan', 'Testdivision', '503-606-442', 'Kmseqaf, Buzrwt', 'Normal Retirement', 'N/A', 'Male',
        '35855', 'Single', 'English', '14709', '28399', '28399', '36647', '34820', '38473', 'Unknown', '32082');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('160-543-312', 'Testplan', 'Testdivision', '503-900-038', 'Azueryb, Cysmn', 'Normal Retirement', 'N/A',
        'Female', '42948', 'Married', 'English', '21020', '29403', '29403', '42948', '41122', '44774', '42948',
        '33055');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('861-577-208', 'Testplan', 'Testdivision', '692-989-209', 'Uncbnqts, Atxcju', 'Normal Retirement', 'N/A',
        'Male', '38718', 'Single', 'English', '16777', '27454', '27454', '38718', '36892', '40544', '38718', '31107');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('866-168-397', 'Testplan', 'Testdivision', '885-392-724', 'Tchuzz, Rutsv', 'Normal Retirement', 'N/A', 'Male',
        '35841', 'Married', 'English', '15734', '27044', '27044', '37653', '35827', '39479', 'Unknown', '30713');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('189-584-374', 'Testplan', 'Testdivision', '317-808-695', 'Gaenhz, Xspygh', 'Normal Retirement', 'N/A', 'Male',
        '33496', 'Married', 'English', '12279', '24487', '27044', '34213', '32387', '36039', 'Unknown', '28157');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('555-768-345', 'Testplan', 'Testdivision', '747-445-356', 'Rrtggs, Gcpxxm', 'Normal Retirement', 'N/A', 'Male',
        '35384', 'Married', 'English', '12660', '30482', '30482', '34578', '32752', '36404', 'Unknown', '34151');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('861-598-318', 'Testplan', 'Testdivision', '198-106-035', 'Mkdtkhsy, Srvkde', 'Terminated',
        'No Benefit, Not Vested', 'Male', '30665', 'Single', 'English', '11277', '29082', '29082', '35034', '31382',
        '35034', 'Unknown', '32752');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('717-070-180', 'Testplan', 'Testdivision', '333-459-046', 'Fkpcmur, Uet', 'Terminated',
        'No Benefit, Not Vested', 'Female', '35414', 'Single', 'English', '20804', '34288', '34288', '44562', '40909',
        '44562', 'Unknown', '35034');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('451-886-988', 'Testplan', 'Testdivision', '556-592-235', 'Uwacddwq, Njjazb', 'Terminated',
        'No Benefit, Not Vested', 'Female', '29448', 'Single', 'English', '20500', '28079', '28140', '44256', '40603',
        '44256', 'Unknown', '31747');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('901-976-707', 'Testplan', 'Testdivision', '658-305-213', 'Mafsmuvj, Cmxhc', 'Terminated',
        'No Benefit, Not Vested', 'Female', '29204', 'Single', 'English', '8872', '29143', '29143', '32629', '28976',
        '32629', 'Unknown', '32813');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('992-132-747', 'Testplan', 'Testdivision', '489-751-819', 'Uhvkbwnf, Zfvjra', 'Terminated',
        'No Benefit, Not Vested', 'Male', '36083', 'Single', 'English', '11794', '35688', '35688', '35551', '31898',
        '35551', 'Unknown', '36434');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('153-197-290', 'Testplan', 'Testdivision', '886-199-719', 'Kmbwnhky, Becpc', 'Terminated',
        'No Benefit, Not Vested', 'Female', '28901', 'Single', 'English', '6164', '28870', '28870', '29921', '26268',
        '29921', 'Unknown', '32540');
INSERT INTO public.memberdata ("MemberID", "planName", "Division", "SIN", name, status, substatus, gender, "statusDate",
                               "spouseType", language, "dateOfBirth", "dateOfHire", "dateOfEntry",
                               "normalRetirementDate", "earlyRetirementDate", "earlyUnreducedRetirementDate", vested,
                               "latestVestingDate")
VALUES ('433-044-867', 'Testplan', 'Testdivision', '919-856-710', 'Zxerbd, Tkjqra', 'Terminated',
        'No Benefit, Not Vested', 'Female', '28321', 'Single', 'English', '6164', '28321', '28321', '29921', '26268',
        '29921', 'Unknown', '31990');

CREATE TABLE service
(
    "MemberID"    VARCHAR(8000),
    "1979service" VARCHAR(8000),
    "1980service" VARCHAR(8000),
    "1981service" VARCHAR(8000),
    "1982service" VARCHAR(8000),
    "1983service" VARCHAR(8000),
    "1984service" VARCHAR(8000),
    "1985service" VARCHAR(8000),
    "1986service" VARCHAR(8000),
    "1987service" VARCHAR(8000),
    "1988service" VARCHAR(8000),
    "1989service" VARCHAR(8000),
    "1990service" VARCHAR(8000),
    "1991service" VARCHAR(8000),
    "1992service" VARCHAR(8000),
    "1993service" VARCHAR(8000),
    "1994service" VARCHAR(8000),
    "1995service" VARCHAR(8000),
    "1996service" VARCHAR(8000),
    "1997service" VARCHAR(8000),
    "1998service" VARCHAR(8000),
    "1999service" VARCHAR(8000),
    "2000service" VARCHAR(8000),
    "2001service" VARCHAR(8000),
    "2002service" VARCHAR(8000),
    "2003service" VARCHAR(8000),
    "2004service" VARCHAR(8000),
    "2005service" VARCHAR(8000),
    "2006service" VARCHAR(8000),
    "2007service" VARCHAR(8000),
    "2008service" VARCHAR(8000),
    "2009service" VARCHAR(8000),
    "2010service" VARCHAR(8000),
    "2011service" VARCHAR(8000),
    "2012service" VARCHAR(8000),
    "2013service" VARCHAR(8000),
    "2014service" VARCHAR(8000),
    "2015service" VARCHAR(8000),
    "2016service" VARCHAR(8000)
);

INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('623-456-334', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('705-272-661', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('324-852-903', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('927-941-208', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('796-877-009', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('607-994-884', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('428-706-062', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('941-925-959', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('953-798-274', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('917-599-064', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('390-964-911', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('553-246-781', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('132-895-007', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('631-190-247', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('475-976-407', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('702-712-853', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.7692', '1', '1', '1', '1', '1', '1');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('941-801-789', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0.6667', '1', '1', '1', '1', '1');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('206-876-800', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.7', '1');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('740-177-571', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0.3', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('298-898-864', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0.3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('876-454-565', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('154-768-914', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0.7', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('120-351-371', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('419-024-642', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('115-272-495', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('820-789-413', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('430-848-182', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('353-869-532', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('685-225-555', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('364-241-826', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('808-161-768', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('994-934-645', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('103-499-640', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('898-862-347', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('267-970-342', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('846-973-839', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('524-861-703', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('835-809-502', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('182-718-102', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('239-041-067', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('160-543-312', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('861-577-208', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('866-168-397', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('189-584-374', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('555-768-345', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('861-598-318', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('717-070-180', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('451-886-988', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('901-976-707', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('992-132-747', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('153-197-290', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO public.service ("MemberID", "1979service", "1980service", "1981service", "1982service", "1983service",
                            "1984service", "1985service", "1986service", "1987service", "1988service", "1989service",
                            "1990service", "1991service", "1992service", "1993service", "1994service", "1995service",
                            "1996service", "1997service", "1998service", "1999service", "2000service", "2001service",
                            "2002service", "2003service", "2004service", "2005service", "2006service", "2007service",
                            "2008service", "2009service", "2010service", "2011service", "2012service", "2013service",
                            "2014service", "2015service", "2016service")
VALUES ('433-044-867', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0',
        '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

create table "User"
(
    "idUser"    uuid                     default uuid_generate_v4() not null
        constraint "User_pkey"
            primary key,
    "createdAt" timestamp with time zone default now()              not null,
    "updatedAt" timestamp with time zone default now()              not null,
    "updatedBy" uuid
        constraint user_updatedby_foreign
            references "User",
    "createdBy" uuid
        constraint user_createdby_foreign
            references "User",
    name        varchar(255)                                        not null
        constraint user_name_unique
            unique,
    "firstName" varchar(255)                                        not null,
    "lastName"  varchar(255)                                        not null,
    email       varchar(255)                                        not null,
    locked      boolean                  default false              not null,
    password    varchar(255),
    "isDeleted" boolean                  default false              not null
);

create index user_updatedby_index on "User" ("updatedBy");
create index user_createdby_index on "User" ("createdBy");

INSERT INTO public."User" ("idUser", "createdAt", "updatedAt", "updatedBy", "createdBy", name, "firstName", "lastName",
                           email, locked, password, "isDeleted")
VALUES ('00000000-0000-4000-0000-000000000000', '1970-01-01 00:00:00.000000', '1970-01-01 00:00:00.000000',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'SYSTEM', 'SYSTEM', 'SYSTEM',
        'SYSTEM', true, '%', false);

create table "Country"
(
    "idCountry" uuid                     default uuid_generate_v4() not null
        constraint "Country_pkey"
            primary key,
    "createdAt" timestamp with time zone default now()              not null,
    "updatedAt" timestamp with time zone default now()              not null,
    "updatedBy" uuid
        constraint country_updatedby_foreign
            references "User",
    "createdBy" uuid
        constraint country_createdby_foreign
            references "User",
    code        varchar(255)                                        not null,
    name        varchar(255)                                        not null,
    "isDeleted" boolean                  default false              not null
);

create index country_updatedby_index on "Country" ("updatedBy");
create index country_createdby_index on "Country" ("createdBy");

INSERT INTO public."Country" ("idCountry", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, "isDeleted")
VALUES ('99140fbb-2ba5-495a-8088-0273bfc35afe', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', '', 'W.I.', false);
INSERT INTO public."Country" ("idCountry", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, "isDeleted")
VALUES ('fee62d93-4130-437b-9ed8-e7637cbc003a', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', '', 'Canada', false);
INSERT INTO public."Country" ("idCountry", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, "isDeleted")
VALUES ('34118f3e-f539-465a-a689-d9455304e390', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', '', 'Phillippines', false);
INSERT INTO public."Country" ("idCountry", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, "isDeleted")
VALUES ('07c033e8-f003-4da7-854b-41896bb26080', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', '', 'USA', false);
INSERT INTO public."Country" ("idCountry", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, "isDeleted")
VALUES ('06b9bd3e-2b6e-414e-95f2-04721a91fcfb', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', '', 'United Kingdom', false);
INSERT INTO public."Country" ("idCountry", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, "isDeleted")
VALUES ('a6cdf261-b628-4663-95b0-417c9a31db77', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', '', 'Chile', false);
INSERT INTO public."Country" ("idCountry", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, "isDeleted")
VALUES ('71b590f3-ffad-4da2-a30f-3b6b29104530', '2019-02-26 20:52:41.133116', '2019-02-26 20:52:41.133116',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'GER', 'Germany', false);
INSERT INTO public."Country" ("idCountry", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, "isDeleted")
VALUES ('942a3039-3ab3-4f3a-b8a9-0a3d16824956', '2019-02-26 20:52:41.133116', '2019-02-26 20:52:41.133116',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'SCO', 'Scotland', false);

create table "Province"
(
    "idProvince" uuid                     default uuid_generate_v4() not null
        constraint "Province_pkey"
            primary key,
    "createdAt"  timestamp with time zone default now()              not null,
    "updatedAt"  timestamp with time zone default now()              not null,
    "updatedBy"  uuid
        constraint province_updatedby_foreign
            references "User",
    "createdBy"  uuid
        constraint province_createdby_foreign
            references "User",
    code         varchar(255)                                        not null,
    name         varchar(255)                                        not null,
    country_id   uuid
        constraint province_country_id_foreign
            references "Country",
    "isDeleted"  boolean                  default false              not null
);

INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('41154c8b-a5e5-4d4a-a68c-178a95c5eb33', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'QB', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('0c430d08-14e7-4515-85f7-ea66cc63748a', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'CH', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('62f710f3-2e21-4423-9adc-3cb5e9f6ca67', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'PA', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('93252e76-8744-4719-ac6e-4ac52a82076b', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'WI', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('66c6fd54-feb2-4bcc-a862-d070b97a752e', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'AN', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('66fabca4-260e-47eb-8121-dd2b32519c80', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'SK', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('871fa003-f925-40cc-abda-c5548f8073e9', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'CO', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('25ab57dc-527c-415e-8d64-550dc4bbd432', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'NO', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('44d2c3b0-3e95-4580-888b-0aab20cd1ccc', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'IA', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('039a352b-7a0e-4e9d-afb4-2db006cb7a77', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'TX', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('2251cef2-e62f-4b5c-99f9-a97a9a9f522c', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'NS', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('550be5f3-a393-4663-a316-1dbb686e85dd', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'NE', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('05ef9e5e-bdf8-4159-9967-cfe13c63f754', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'QU', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('339be1d3-f609-4bb1-9d72-3ca356b35fec', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'ND', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('07cbc11c-ffda-48be-99d5-6fa139403f90', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'MN', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('2bf29a7a-97c1-45b8-85e0-31910eef938f', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'CA', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('44497754-bf3d-4526-9dd4-7068175f8670', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'WP', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('66e64103-c70e-4ece-a0fd-e1c18834a6eb', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'LO', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('9388525c-39b5-42a0-b3c9-d02179552944', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'M', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('7b01d07a-f0d9-421a-88ff-616b9191ee92', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'OA', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('f53cf8ea-b373-4665-bf26-156aefb43d3d', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'BC', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('40f8b8da-6ed0-423d-9875-1acd9b4b863a', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'MB', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('437594be-b030-4c67-8279-1dc6e5119335', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'MD', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('4a9d2560-b963-46e4-8abb-68ac247655f2', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'NL', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('ae25019a-1240-4ef3-853c-3a88cae20265', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'TE', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('e3956158-7426-48ed-9b51-02504386a131', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'WA', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('dc978da8-d329-41c0-bc44-b4d8786a2e6c', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'NB', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('a697a6a6-4dc6-4554-9afa-d45c52e33137', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'PQ', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('34b9f7b5-0446-4b39-a41e-b11cf4498b44', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'IL', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('f26e72e8-e5cb-409b-b1be-9e729edac75a', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'QC', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('70b265f4-5478-462b-bb95-c98280a9acd3', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'MA', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('4d59d200-487f-431e-afc5-247e244485ca', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'ST', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('badd6bc8-3d6e-4a12-890f-0545b592cca0', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'DO', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('428f0654-98dc-4ac3-8cca-9dbb74619f3a', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'JA', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('6646bc76-dbff-4bfa-989e-915603f58c5a', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'NF', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('c77fe775-6165-41a1-84bb-61e679a19a1a', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'ON', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('be77fd70-c7eb-4e96-8b85-a7795164f984', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'VI', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('bf1b69a2-6da7-4887-9cc0-537bdc64ccfe', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'AL', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('a12ee644-578d-4e84-9fb0-bae580731a16', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'R0', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('811320f4-48f4-424c-b721-26e97d75577b', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'AR', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('ca360ba4-0c6a-4035-b628-f77a25681cf4', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'PE', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('0dc16e55-1d79-4a00-9d99-89abd8970b36', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'R3', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('e1f2b2cf-6add-4336-b516-aea7f6278ead', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'BR', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('57304277-9b4f-403c-843b-050d7aaa3561', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'MI', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('66d495d5-37dc-4fb8-a489-a7d50bb90ea6', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'FL', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('4b761e9b-fdda-4ab0-a283-3e0e4be87756', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'YT', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('66dbe1bc-3d9a-415b-a4ad-205d03402056', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'AB', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('4f23ac56-b328-4a28-b217-b5adba37a8b1', '2018-11-12 17:28:50.241166', '2018-11-12 17:28:50.241166',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'B.', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('e8315f0c-9184-4eca-8947-59920dbadb77', '2019-02-28 21:59:06.145635', '2019-02-28 21:59:06.145635',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'DE', '', null, false);
INSERT INTO public."Province" ("idProvince", "createdAt", "updatedAt", "updatedBy", "createdBy", code, name, country_id,
                               "isDeleted")
VALUES ('87f2498f-a03b-4a0e-a882-dc529dd18ba9', '2019-06-16 23:51:17.336106', '2019-06-16 23:51:17.336106',
        '00000000-0000-4000-0000-000000000000', '00000000-0000-4000-0000-000000000000', 'KS', 'Kansas',
        '07c033e8-f003-4da7-854b-41896bb26080', false);

create index province_updatedby_index on "Province" ("updatedBy");
create index province_createdby_index on "Province" ("createdBy");
create index province_country_id_index on "Province" (country_id);


create table "Plan"
(
    "idPlan"    uuid                     default uuid_generate_v4() not null
        constraint "Plan_pkey"
            primary key,
    "createdAt" timestamp with time zone default now()              not null,
    "updatedAt" timestamp with time zone default now()              not null,
    "updatedBy" uuid
        constraint plan_updatedby_foreign
            references "User",
    "createdBy" uuid
        constraint plan_createdby_foreign
            references "User",
    name        varchar(255)                                        not null,
    code        varchar(255)                                        not null,
    description varchar(255),
    "isDeleted" boolean                  default false              not null
);

create index plan_updatedby_index on "Plan" ("updatedBy");
create index plan_createdby_index on "Plan" ("createdBy");

create table "Member"
(
    "idMember"         uuid                     default uuid_generate_v4() not null
        constraint "Member_pkey"
            primary key,
    "createdAt"        timestamp with time zone default now()              not null,
    "updatedAt"        timestamp with time zone default now()              not null,
    "updatedBy"        uuid
        constraint member_updatedby_foreign
            references "User",
    "createdBy"        uuid
        constraint member_createdby_foreign
            references "User",
    "SIN"              integer                                             not null,
    "employeeNumber"   varchar(255),
    "firstName"        varchar(255),
    "lastName"         varchar(255),
    "dateOfBirth"      date,
    "dateOfDeath"      date,
    gender             text
        constraint "Member_gender_check"
            check (gender = ANY (ARRAY ['m'::text, 'f'::text])),
    "maritalStatus"    varchar(255),
    language           varchar(255),
    "maritalBreakdown" boolean,
    address            varchar(255),
    "postalCode"       varchar(255),
    city               varchar(255),
    country_id         uuid
        constraint member_country_id_foreign
            references "Country",
    province_id        uuid
        constraint member_province_id_foreign
            references "Province",
    phone              varchar(255),
    email              varchar(255),
    "customOne"        varchar(255),
    "customTwo"        varchar(255),
    "customThree"      varchar(255),
    "customFour"       varchar(255),
    plan_id            uuid                                                not null
        constraint member_plan_id_foreign
            references "Plan",
    "isDeleted"        boolean                  default false              not null
);

create index member_updatedby_index on "Member" ("updatedBy");
create index member_createdby_index on "Member" ("createdBy");
create index member_country_id_index on "Member" (country_id);
create index member_province_id_index on "Member" (province_id);
create index member_plan_id_index on "Member" (plan_id);

create table "Account"
(
    "idAccount"                    uuid                     default uuid_generate_v4() not null
        constraint "Account_pkey"
            primary key,
    "createdAt"                    timestamp with time zone default now()              not null,
    "updatedAt"                    timestamp with time zone default now()              not null,
    "updatedBy"                    uuid
        constraint account_updatedby_foreign
            references "User",
    "createdBy"                    uuid
        constraint account_createdby_foreign
            references "User",
    member_id                      uuid                                                not null
        constraint account_member_id_foreign
            references "Member",
    "accountNumber"                integer                                             not null,
    "employerProvince_id"          uuid
        constraint account_employerprovince_id_foreign
            references "Province",
    "dateOfDeath"                  date,
    "dateOfRetirement"             date,
    "dateOfTermination"            date,
    "dateOfTransferIn"             date,
    "dateOfTransferOut"            date,
    vested                         boolean                  default false              not null,
    "dateOfEntry"                  date,
    "dateOfHire"                   date,
    "normalRetirementDate"         date,
    "earlyRetirementDate"          date,
    "earlyUnreducedRetirementDate" date,
    "growIn"                       boolean                  default false              not null,
    plan_id                        uuid                                                not null
        constraint account_plan_id_foreign
            references "Plan",
    "customOne"                    varchar(255),
    "customTwo"                    varchar(255),
    "customThree"                  varchar(255),
    "customFour"                   varchar(255),
    "isDeleted"                    boolean                  default false              not null,
    idx                            serial                                              not null
        constraint account_idx_unique
            unique
);

create index account_updatedby_index on "Account" ("updatedBy");
create index account_createdby_index on "Account" ("createdBy");
create index account_member_id_index on "Account" (member_id);
create index account_employerprovince_id_index on "Account" ("employerProvince_id");
create index account_plan_id_index on "Account" (plan_id);

create table "Earning"
(
    "idEarning"                 uuid                     default uuid_generate_v4() not null
        constraint "Earning_pkey"
            primary key,
    "createdAt"                 timestamp with time zone default now()              not null,
    "updatedAt"                 timestamp with time zone default now()              not null,
    "updatedBy"                 uuid
        constraint earning_updatedby_foreign
            references "User",
    "createdBy"                 uuid
        constraint earning_createdby_foreign
            references "User",
    account_id                  uuid                                                not null
        constraint earning_account_id_foreign
            references "Account",
    "periodEndYear"             integer,
    "taxYear"                   integer,
    "pensionEarningsRaw"        numeric(15, 2),
    "pensionEarningsAdjustment" numeric(15, 2),
    "hoursRaw"                  numeric(15, 2),
    "hoursAdjustment"           numeric(15, 2),
    "serviceRaw"                numeric(15, 8),
    "serviceAdjustment"         numeric(15, 8),
    "earningNotes"              varchar(2000),
    plan_id                     uuid                                                not null
        constraint earning_plan_id_foreign
            references "Plan",
    "customOne"                 varchar(255),
    "customTwo"                 varchar(255),
    "customThree"               varchar(255),
    "customFour"                varchar(255),
    "hoursAdjustmentNote"       varchar(255),
    "serviceAdjustmentNote"     varchar(255),
    "startDate"                 date,
    "endDate"                   date,
    "isDeleted"                 boolean                  default false              not null
);

create index earning_updatedby_index on "Earning" ("updatedBy");
create index earning_createdby_index on "Earning" ("createdBy");
create index earning_account_id_index on "Earning" (account_id);
create index earning_periodendyear_index on "Earning" ("periodEndYear");
create index earning_plan_id_index on "Earning" (plan_id);
create index earning_startdate_index on "Earning" ("startDate");
create index earning_enddate_index on "Earning" ("endDate");

create table "Contribution"
(
    "idContribution"    uuid                     default uuid_generate_v4() not null
        constraint "Contribution_pkey"
            primary key,
    "createdAt"         timestamp with time zone default now()              not null,
    "updatedAt"         timestamp with time zone default now()              not null,
    "updatedBy"         uuid
        constraint contribution_updatedby_foreign
            references "User",
    "createdBy"         uuid
        constraint contribution_createdby_foreign
            references "User",
    account_id          uuid                                                not null
        constraint contribution_account_id_foreign
            references "Account",
    "periodEndYear"     integer,
    contributions       numeric(15, 2),
    "contributionNotes" varchar(2000),
    plan_id             uuid                                                not null
        constraint contribution_plan_id_foreign
            references "Plan",
    "customOne"         varchar(255),
    "customTwo"         varchar(255),
    "customThree"       varchar(255),
    "customFour"        varchar(255),
    "eeBuybackAmount"   numeric(15, 2),
    "startDate"         date,
    "endDate"           date,
    "isDeleted"         boolean                  default false              not null
);

create index contribution_updatedby_index on "Contribution" ("updatedBy");
create index contribution_createdby_index on "Contribution" ("createdBy");
create index contribution_account_id_index on "Contribution" (account_id);
create index contribution_plan_id_index on "Contribution" (plan_id);

COMMIT;
