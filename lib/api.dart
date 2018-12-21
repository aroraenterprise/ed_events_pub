library edropin_eventsapi.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/ee_event_attendees_api.dart';
part 'api/ee_event_automations_api.dart';
part 'api/ee_event_certificates_api.dart';
part 'api/ee_event_dropins_api.dart';
part 'api/ee_event_tags_api.dart';
part 'api/ee_event_tickets_api.dart';
part 'api/ee_events_api.dart';
part 'api/ee_kiosk_api.dart';
part 'api/ee_permissions_api.dart';
part 'api/ee_qr_code_api.dart';

part 'model/ee_address.dart';
part 'model/ee_applied_promotion.dart';
part 'model/ee_attendee_certificate.dart';
part 'model/ee_attendee_dropin.dart';
part 'model/ee_attendee_notification.dart';
part 'model/ee_base_id.dart';
part 'model/ee_certificate_inspect.dart';
part 'model/ee_certificate_inspect_placeholders.dart';
part 'model/ee_csv.dart';
part 'model/ee_default_error.dart';
part 'model/ee_discount.dart';
part 'model/ee_event.dart';
part 'model/ee_event_attendee.dart';
part 'model/ee_event_attendee_claim_update.dart';
part 'model/ee_event_attendee_claim_update_attendees.dart';
part 'model/ee_event_attendee_transfer.dart';
part 'model/ee_event_attendee_update.dart';
part 'model/ee_event_automation.dart';
part 'model/ee_event_automation_update.dart';
part 'model/ee_event_certificate.dart';
part 'model/ee_event_certificate_placeholder.dart';
part 'model/ee_event_certificate_update.dart';
part 'model/ee_event_dropin.dart';
part 'model/ee_event_dropin_ticket.dart';
part 'model/ee_event_dropin_update.dart';
part 'model/ee_event_profile.dart';
part 'model/ee_event_tag.dart';
part 'model/ee_event_tag_upsert.dart';
part 'model/ee_event_update.dart';
part 'model/ee_facet_search.dart';
part 'model/ee_facet_search_facet_hits.dart';
part 'model/ee_geoloc.dart';
part 'model/ee_kiosk.dart';
part 'model/ee_kiosk_update.dart';
part 'model/ee_paged_event.dart';
part 'model/ee_paged_event_attendee.dart';
part 'model/ee_paged_event_automation.dart';
part 'model/ee_paged_event_certificate.dart';
part 'model/ee_paged_event_dropin.dart';
part 'model/ee_paged_event_tag.dart';
part 'model/ee_paged_kiosk.dart';
part 'model/ee_paged_permission.dart';
part 'model/ee_paged_permission_invite.dart';
part 'model/ee_paged_ticket.dart';
part 'model/ee_pagination.dart';
part 'model/ee_permission.dart';
part 'model/ee_permission_accept.dart';
part 'model/ee_permission_check.dart';
part 'model/ee_permission_input.dart';
part 'model/ee_permission_invite.dart';
part 'model/ee_permission_invite_create.dart';
part 'model/ee_price_strategy.dart';
part 'model/ee_price_summary.dart';
part 'model/ee_profile.dart';
part 'model/ee_pub_sub_message.dart';
part 'model/ee_pub_sub_message_message.dart';
part 'model/ee_refund_policy.dart';
part 'model/ee_store_item.dart';
part 'model/ee_store_item_update.dart';
part 'model/ee_success.dart';
part 'model/ee_ticket.dart';
part 'model/ee_ticket_dropin.dart';
part 'model/ee_ticket_summary.dart';
part 'model/ee_ticket_update.dart';
part 'model/inline_object.dart';
part 'model/inline_response200.dart';
part 'model/inline_response2001.dart';


ApiClient defaultApiClient = ApiClient();
