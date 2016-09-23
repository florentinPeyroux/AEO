<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2(7:0)" />
        <signal name="XLXN_3(7:0)" />
        <signal name="led(7:0)" />
        <signal name="switches(7:0)" />
        <port polarity="Output" name="led(7:0)" />
        <port polarity="Input" name="switches(7:0)" />
        <blockdef name="ibuf8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="96" x="128" y="-44" height="24" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="obuf8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <rect width="96" x="128" y="-44" height="24" />
        </blockdef>
        <block symbolname="ibuf8" name="XLXI_1">
            <blockpin signalname="switches(7:0)" name="I(7:0)" />
            <blockpin signalname="XLXN_2(7:0)" name="O(7:0)" />
        </block>
        <block symbolname="obuf8" name="XLXI_2">
            <blockpin signalname="XLXN_2(7:0)" name="I(7:0)" />
            <blockpin signalname="led(7:0)" name="O(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2192" y="1712" name="XLXI_2" orien="R90" />
        <instance x="624" y="688" name="XLXI_1" orien="R90" />
        <branch name="XLXN_2(7:0)">
            <wire x2="656" y1="912" y2="1232" x1="656" />
            <wire x2="656" y1="1232" y2="2160" x1="656" />
            <wire x2="2224" y1="1232" y2="1232" x1="656" />
            <wire x2="2224" y1="1232" y2="1712" x1="2224" />
            <wire x2="2224" y1="656" y2="1232" x1="2224" />
        </branch>
        <branch name="led(7:0)">
            <wire x2="2224" y1="1936" y2="1968" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1968" name="led(7:0)" orien="R90" />
        <branch name="switches(7:0)">
            <wire x2="656" y1="656" y2="688" x1="656" />
        </branch>
        <iomarker fontsize="28" x="656" y="656" name="switches(7:0)" orien="R270" />
    </sheet>
</drawing>