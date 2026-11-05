package com.store.payments;

import java.util.Optional;

import com.store.orders.Order;

public interface PaymentGateway {
	CheckoutSession createCheckoutSession(Order order);
	Optional<PaymentResult> parseWebhookRequest(WebhookRequest request);
}
