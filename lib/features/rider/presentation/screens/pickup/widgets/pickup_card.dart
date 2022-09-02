import 'package:blueex_emp_app_flutter/features/rider/domain/entity/pickup_entity.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/button.dart';
import 'package:blueex_emp_app_flutter/shared/widgets/card_cell.dart';
import 'package:flutter/material.dart';

class PickupCard extends StatelessWidget {
  final Pickup pickup;

  const PickupCard({super.key, required this.pickup});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        color: const Color(0xFFF4F6F9),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  CardCell(name: 'Pickup Number', value: pickup.pickupNo),
                  CardCell(name: 'Consignee Name', value: pickup.consigneeName),
                ],
              ),
              Row(
                children: [
                  CardCell(name: 'AC No', value: pickup.acNo),
                  CardCell(name: 'Address', value: pickup.address),
                ],
              ),
              Row(
                children: pickup.currentStatus == "1"
                    ? [
                        Expanded(
                          child: Button(
                            child: const Text(
                              'Updated Status',
                              style: TextStyle(fontSize: 14),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Button(
                            child: const Text(
                              'Call Customer',
                              style: TextStyle(fontSize: 14),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ]
                    : [
                        Expanded(
                          child: Button(
                            child: const Text(
                              'Accept',
                              style: TextStyle(fontSize: 14),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Button(
                            child: const Text(
                              'Decline',
                              style: TextStyle(fontSize: 14),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
