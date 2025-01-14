import z from "zod";
export const UserTypes = z.object({
  name: z
    .string({
      required_error: "Name is required",
    })
    .min(4, "Name must be at least 4 characters"),
  email: z
    .string({
      required_error: "Email is required",
    })
    .min(4, "Email must be at least 4 characters"),
  password: z
    .string({
      required_error: "Password is required",
    })
    .min(8, "Password must be at least 8 characters"),
  address: z
    .string({
      required_error: "Address is required",
    })
    .min(4, "Address must be at least 4 characters"),
  phone: z
    .string({
      required_error: "Phone is required",
    })
    .min(10, "Phone must be at least 10 characters"),
  role: z.enum(["maintainer", "seller", "user"], {
    required_error: "Role is required",
  }),
});
