import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/form/form_field/widgets/gf_questionwidget.dart';
import 'package:getwidget/getwidget.dart';

class FormPage extends StatefulWidget {
  FormPage({Key? key}) : super(key: key);
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  void initState() {
    super.initState();
  }

  onFormFailed() {
    print('form failed');
  }

  onFormSuccess() {
    print('form valide successed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 250,
              child: GfForm(
                validatefailed: onFormFailed,
                validatesuccess: onFormSuccess,
                formHeading: 'This is GfForm',
                radius: 10,
                width: 500,
                formfields: <Widget>[
                  GfFormField(
                    gfFormFieldType: GfFormFieldType.text,
                    editingbordercolor: GFColors.PRIMARY,
                    idlebordercolor: GFColors.SECONDARY,
                    borderwidth: 1.0,
                    hintText: 'this is fieldtype:text',
                  ),
                  GfFormField(
                    gfFormFieldType: GfFormFieldType.text,
                    editingbordercolor: GFColors.PRIMARY,
                    idlebordercolor: GFColors.SECONDARY,
                    borderwidth: 1.0,
                    hintText: 'this is fieldtype:text',
                  ),
                ],
                defaultSubmitButtonEnabled: false,
                customSubmitButton: GFButton(
                  onPressed: () {
                    print("Submit");
                  },
                  shape: GFButtonShape.pills,
                  type: GFButtonType.outline2x,
                  color: GFColors.ALT,
                  size: GFSize.LARGE,
                  blockButton: true,
                  text: "Submit",
                ),
              ),
            ),
            GfFormField(
              gfFormFieldType: GfFormFieldType.text,
              editingbordercolor: GFColors.PRIMARY,
              idlebordercolor: GFColors.SECONDARY,
              borderwidth: 1.0,
              hintText: 'this is formfield:text',
            ),
            GfFormField(
              gfFormFieldType: GfFormFieldType.country,
              editingbordercolor: GFColors.PRIMARY,
              idlebordercolor: GFColors.SECONDARY,
              borderwidth: 1.0,
              hintText: 'this is formfield:country',
            ),
            GfFormField(
              gfFormFieldType: GfFormFieldType.email,
              editingbordercolor: GFColors.PRIMARY,
              idlebordercolor: GFColors.SECONDARY,
              borderwidth: 1.0,
              hintText: 'this is formfield:email',
            ),
            GfFormField(
              gfFormFieldType: GfFormFieldType.gender,
              editingbordercolor: GFColors.PRIMARY,
              idlebordercolor: GFColors.SECONDARY,
              borderwidth: 1.0,
              hintText: 'this is formfield:gender',
            ),
            GfFormField(
              gfFormFieldType: GfFormFieldType.name,
              editingbordercolor: GFColors.PRIMARY,
              idlebordercolor: GFColors.SECONDARY,
              borderwidth: 1.0,
              hintText: 'this is formfield:name',
            ),
            GfFormField(
              gfFormFieldType: GfFormFieldType.number,
              editingbordercolor: GFColors.PRIMARY,
              idlebordercolor: GFColors.SECONDARY,
              borderwidth: 1.0,
              hintText: 'this is formfield:number',
            ),
            GfFormField(
              gfFormFieldType: GfFormFieldType.password,
              editingbordercolor: GFColors.PRIMARY,
              idlebordercolor: GFColors.SECONDARY,
              borderwidth: 1.0,
              hintText: 'this is formfield:password',
            ),
            GfFormField(
              gfFormFieldType: GfFormFieldType.phone,
              editingbordercolor: GFColors.PRIMARY,
              idlebordercolor: GFColors.SECONDARY,
              borderwidth: 1.0,
              hintText: 'this is formfield:phone',
            ),
            GfFormField(
              gfFormFieldType: GfFormFieldType.question,
              editingbordercolor: GFColors.PRIMARY,
              idlebordercolor: GFColors.SECONDARY,
              borderwidth: 1.0,
              hintText: 'this is formfield:question',
              question: 'am i handsome',
              acceptButtonText: 'Sure you are',
              declineButtonText: 'You are handsome',
            ),
          ],
        ),
      ),
    );
  }
}
