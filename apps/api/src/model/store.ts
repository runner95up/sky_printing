import mongoose, { Schema } from "mongoose";

const StoreSchema = new Schema(
  {
    name: String,
    address: {
      street: String,
      city: String,
      state: String,
      country: String,
      zipCode: String,
    }, 
    phone: String,
    ownerId: Object,
  },
  {
    timestamps: true,
  }
);

export const Store = mongoose.model("Store", StoreSchema);
