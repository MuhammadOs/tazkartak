import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';
import '../../core/data/models/UsersData.dart';

class Ticket extends StatefulWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  State<Ticket> createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    Color green = const Color(0xFFFDAC41);
    //Color dark=Colors.white;
    Color light = const Color(0xFF1D1D27);
    //Color dark2=const Color(0xFF1D1D27);

    return Scaffold(
      backgroundColor: light,
      body: Center(
        child: TicketWidget(
          width: 380.0,
          height: 500.0,
          isCornerRounded: true,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 120.0,
                      height: 25.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(width: 1.0, color: green),
                      ),
                      child: Center(
                        child: Text(
                          'Tazkartak',
                          style: TextStyle(color: green),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.airplane_ticket_outlined,
                            color: green,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Your ticket',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ticketDetailsWidget(
                          'username',
                          myUsers[0]['email'],
                          'Date',
                          '${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}'),
                      ticketDetailsWidget('Movie', '76836A45', 'Gate', '66B'),
                      ticketDetailsWidget('Class', 'Business', 'Seat', '21B'),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 80.0, left: 30.0, right: 30.0),
                  child: Container(
                    width: 250.0,
                    height: 60.0,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/barcode.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 75.0, right: 75.0),
                  child: Text(
                    '9824 0972 1742 1298',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ticketDetailsWidget(String firstTitle, String firstDesc,
      String secondTitle, String secondDesc) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                firstTitle,
                style: const TextStyle(
                    color: Colors.grey, overflow: TextOverflow.ellipsis),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  firstDesc,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                secondTitle,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  secondDesc,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
