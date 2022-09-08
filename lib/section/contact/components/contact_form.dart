import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/section/contact/components/social_card.dart';
import 'package:portfolio/services/email_service.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  String name = "";
  String work = "";
  String company = "";
  String email = "";
  String more = "";

  bool isFormValid() {
    if (name == "" ||
        work == "" ||
        company == "" ||
        more == "" ||
        !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
            .hasMatch(email)) {
      return false;
    }

    return true;
  }

  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: widget.size.width > 1200 ? 470 : widget.size.width,
            child: TextFormField(
              onChanged: (value) {
                name = value;
                bool formValidationResult = isFormValid();
                if (formValidationResult != isEnabled) {
                  setState(() {
                    isEnabled = formValidationResult;
                  });
                }
              },
              decoration: const InputDecoration(
                labelText: "Your Name",
                hintText: "Enter Your Name",
              ),
            ),
          ),
          SizedBox(
            width: widget.size.width > 1200 ? 470 : widget.size.width,
            child: TextFormField(
              onChanged: (value) {
                email = value;
                bool formValidationResult = isFormValid();
                if (formValidationResult != isEnabled) {
                  setState(() {
                    isEnabled = formValidationResult;
                  });
                }
              },
              decoration: const InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: widget.size.width > 1200 ? 470 : widget.size.width,
            child: TextFormField(
              onChanged: (value) {
                work = value;
                bool formValidationResult = isFormValid();
                if (formValidationResult != isEnabled) {
                  setState(() {
                    isEnabled = formValidationResult;
                  });
                }
              },
              decoration: const InputDecoration(
                labelText: "Work Type",
                hintText: "Enter information about the work",
              ),
            ),
          ),
          SizedBox(
            width: widget.size.width > 1200 ? 470 : widget.size.width,
            child: TextFormField(
              onChanged: (value) {
                company = value;
                bool formValidationResult = isFormValid();
                if (formValidationResult != isEnabled) {
                  setState(() {
                    isEnabled = formValidationResult;
                  });
                }
              },
              decoration: const InputDecoration(
                labelText: "Company",
                hintText: "Enter information about the company",
              ),
            ),
          ),
          SizedBox(
            child: TextFormField(
              onChanged: (value) {
                more = value;
                bool formValidationResult = isFormValid();
                if (formValidationResult != isEnabled) {
                  setState(() {
                    isEnabled = formValidationResult;
                  });
                }
              },
              decoration: const InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          const SizedBox(height: kDefaultPadding * 2),
          Center(
            child: FittedBox(
              child: SocialCard(
                iconData: Icons.mark_email_read,
                name: 'Contact Me!',
                color: MyColorScheme.light,
                press: () async {
                  int responseStatus = await sendEmail(
                      company: company,
                      email: email,
                      name: name,
                      work: work,
                      body: more);
                  print(responseStatus);
                },
                size: widget.size,
                isEnabled: isEnabled,
              ),
            ),
          )
        ],
      ),
    );
  }
}
