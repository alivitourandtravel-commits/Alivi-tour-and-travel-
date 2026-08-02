-- Bookings table mein ek naya column add karo jahan admin extra details
-- (jaise CNIC, passport number, payment status, koi bhi note) likh sake
alter table bookings add column if not exists extra_details text;
