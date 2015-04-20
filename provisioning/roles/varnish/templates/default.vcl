backend default {
  .host = "{{ varnish_vcl_host }}";
  .port = "{{ varnish_vcl_port }}";
}
