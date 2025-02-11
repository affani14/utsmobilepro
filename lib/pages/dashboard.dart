import 'package:flutter/material.dart';
import 'profile.dart';
import 'transfer.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/profil.jpg'),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Selamat datang',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'M Affani Yusuf',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_balance_wallet,
                    size: 60,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saldo',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Rp 100.000.000',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Nomor Rekening',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '089675905448',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Akses Cepat',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TransaksiPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.grey[300],
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Icon(Icons.send, size: 50, color: Colors.blue),
                          SizedBox(height: 5),
                          Text('Kirim', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Icon(Icons.history, size: 50, color: Colors.blue),
                        SizedBox(height: 5),
                        Text('Aktivitas', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    padding: EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Icon(Icons.account_balance, size: 50, color: Colors.blue),
                        SizedBox(height: 5),
                        Text('Akun Dana', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text(
              'Transaksi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Column(
              children: [
                TransactionItem(name: 'Habibie Nazir', amount: 400000, type: 'Uang Masuk'),
                TransactionItem(name: 'Ratih Aisyah', amount: 250000, type: 'Uang Masuk'),
                TransactionItem(name: 'Muhammad Putra', amount: 600000, type: 'Uang Masuk'),
                TransactionItem(name: 'Syafira Nadifa', amount: 200000, type: 'Uang Masuk'),
                TransactionItem(name: 'Taufik Rahman', amount: 150000, type: 'Uang Masuk'),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String name;
  final int amount;
  final String type;

  TransactionItem({
    required this.name,
    required this.amount,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(Icons.attach_money, size: 50, color: Colors.green),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  type,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Text(
            'Rp ${amount.toString()}',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
