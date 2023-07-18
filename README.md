<p align="center"> <b>Chargily Pay Testing Tool (CPTT)</b> </p>

<p align="center"><img src="https://i.imgur.com/CArEK6w.png"></p>

## Chargily Pay Testing Tool (CPTT)
Chargily Pay Testing Tool  aka CPTT is a desktop application that helps developers test their integration of Chargily Pay gateway before launching your app.

## How does it work?

The Chargily Pay Testing Tool is designed to help you test your integration with Chargily Pay. This tool allows you to simulate a successful or canceled payment from a user by sending a POST request to your application, replicating the webhook notification you would receive from Chargily Pay after a payment is made or canceled.

### Understanding the workflow:

1. Payment or cancellation on the checkout page:
   When a user makes a payment or cancels on the checkout page, Chargily Pay sends a webhook notification to inform your application about the event.

2. Webhook Notification:
   The webhook sent by Chargily Pay contains relevant information about the payment or cancellation event. Your application's backend is responsible for processing this notification and taking appropriate actions based on the event details.

3. Payment status handling:
   Upon receiving the webhook notification, your backend can, for example, update the status of a command as PAID if the user's payment was successful. This allows your application to keep track of the payment status and perform necessary actions accordingly.

## Using the Chargily Pay testing tool:

Before releasing your application to the public, it is important to test your webhook handler and its functionality to ensure that it works correctly. However, unlike platforms like Stripe that provide built-in testing environments, Chargily Pay's checkout takes place on Satim's website, making direct testing impossible.

To overcome this limitation, the Chargily Pay testing tool was developed. This tool allows you to send a POST request to your application, simulating a successful or aborted payment from a user. By emulating a real webhook from Chargily Pay, you can verify that your webhook handler works correctly.

To utilize the Chargily Pay Testing Tool, follow these steps:

1. Configure Your Webhook Endpoint:
   Set up a webhook endpoint in your application that can receive and process incoming webhook notifications (You probably already had done that).

2. Obtain the Webhook URL:
   Retrieve the URL of your webhook endpoint. This URL is the address where the Chargily Pay will send the simulated webhook.

3. Access the Chargily Pay Testing Tool:
   Open the Chargily Pay Testing Tool. It provides a user-friendly interface where you can input the webhook URL, the ID of an invoice, your Chargily Pay Secret and the status of the paiment (paid or failed).

4. Emulate a Successful or a Failed Payment:
   Within the Tool, initiate the simulation of a successful of failed payment by clicking on the Send button to send a POST request to your webhook endpoint.

5. Verify Webhook Handling:
   Once the POST request is sent, observe how your webhook handler processes the simulated webhook. Ensure that your application correctly handles the event and updates the relevant payment status.

Note: It is crucial to perform thorough testing to ensure your webhook handler responds accurately to various scenarios, such as successful payments, cancellations, and potential errors, to provide a seamless payment experience for your users.
