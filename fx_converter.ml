let convert_to_gbp amount currency = 
let rate = 
 match String.uppercase_ascii currency with
 | "USD" -> 0.74
 | "EUR" -> 0.84
 | "JPY" -> 0.0052
 | "GBP" -> 1.0
 | _ -> 0.0
in
if rate = 0.0 then
 Printf.printf "Unknown currency: %s\n" currency
else
 Printf.printf "%.2f %s = %.2f GBP\n" amount currency (amount *. rate)

let () =
 print_endline "Currency Converter (to GBP). Type 'exit' to quit.";
 let rec loop () =
  print_string "Enter amount: ";
  let amount_input = read_line in
  if amount_input = "exit" then () else
  let amount = float_of_string amount_input in

  print_string "Enter currency (USD, EUR, JPY, GBP): ";
  let currency = read_line () in

  convert_to_gbp amount currency;
  loop ()

in
loop ()
;;
