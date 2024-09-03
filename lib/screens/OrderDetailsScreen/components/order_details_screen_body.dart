// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OrderDetailsBody extends StatelessWidget {
  const OrderDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildItemsSection(),
            SizedBox(height: 20),
            buildBillDetailsSection(),
            SizedBox(height: 20),
            _buildDeliveryAddressSection(),
            SizedBox(height: 20),
            _buildOrderStatusSection(),
          ],
        ),
      ),
    );
  }

  Widget buildItemsSection() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Items",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            buildItemRow("Apples", 10, 99),
            buildItemRow("Mangoes", 6, 99),
            Divider(),
            Row(
              children: [
                Text(
                  "Total (16 items)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 187),
                Text("₹198"),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildItemRow(String name, int quantity, double price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.network(
              "https://www.shutterstock.com/image-photo/red-apple-isolated-on-white-600nw-1727544364.jpg",
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
            Text("$name x $quantity"),
          ],
        ),
        Text("₹$price"),
      ],
    );
  }

  Widget buildBillDetailsSection() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bill Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            _buildBillDetailRow("Item Total", 210),
            _buildBillDetailRow("Delivery Charge", 20),
            _buildBillDetailRow("Taxes", 20),
            Divider(),
            _buildBillDetailRow("Total (16 items)", 198),
          ],
        ),
      ),
    );
  }

  Widget _buildBillDetailRow(String label, double value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        Text("₹$value"),
      ],
    );
  }

  Widget _buildDeliveryAddressSection() {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delivery Address",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 93, 8, 8),
                ),
                SizedBox(width: 8),
                Text("Home"),
              ],
            ),
            SizedBox(height: 4),
            Text("Sri Sai Nagar, Ayyappa Society, Madhapur,"),
            Text("Tel(500081)"),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderStatusSection() {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Delivered at 10, Sept 10:00AM",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatusItem("Placed", "10.20AM", true),
              _buildStatusItem("Accepted", "10.30AM", true),
              _buildStatusItem("Picked Up", "10.32AM", true),
              _buildStatusItem("Delivered", "10.40AM", true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatusItem(String label, String time, bool completed) {
    return Column(
      children: [
        Text(label),
        Text(time),
        Icon(Icons.check_circle, color: Colors.green),
      ],
    );
  }
}
