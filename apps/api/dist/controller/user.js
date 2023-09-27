"use strict";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (g && (g = 0, op[0] && (_ = 0)), _) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
exports.__esModule = true;
exports.UserController = void 0;
var client_1 = require("@prisma/client");
var sanitzer_1 = require("../lib/sanitzer");
var UserController = function (_a) {
    var route = _a.route;
    var db = new client_1.PrismaClient();
    route.post("/register", function (req, res) { return __awaiter(void 0, void 0, void 0, function () {
        var password, confirmPassword, find, user;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    password = req.body.password || "";
                    confirmPassword = req.body.confirmPassword || "";
                    if (password !== confirmPassword) {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "Password tidak sesuai"
                            })];
                    }
                    if (password === "") {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "Password tidak boleh kosong"
                            })];
                    }
                    if (password.length < 8) {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "Password minimal 8 karakter"
                            })];
                    }
                    return [4 /*yield*/, db.user.findUnique({
                            where: {
                                email: req.body.email
                            }
                        })];
                case 1:
                    find = _a.sent();
                    if (find) {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "Email sudah terdaftar"
                            })];
                    }
                    return [4 /*yield*/, db.user.create({
                            data: {
                                email: req.body.email,
                                password: req.body.password,
                                name: req.body.name
                            }
                        })];
                case 2:
                    user = _a.sent();
                    return [2 /*return*/, res.status(200).json({
                            success: true,
                            message: "Berhasil",
                            data: (0, sanitzer_1.sanitize)("password", user)
                        })];
            }
        });
    }); });
};
exports.UserController = UserController;