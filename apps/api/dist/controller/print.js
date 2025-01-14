"use strict";
var __assign = (this && this.__assign) || function () {
    __assign = Object.assign || function(t) {
        for (var s, i = 1, n = arguments.length; i < n; i++) {
            s = arguments[i];
            for (var p in s) if (Object.prototype.hasOwnProperty.call(s, p))
                t[p] = s[p];
        }
        return t;
    };
    return __assign.apply(this, arguments);
};
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
exports.PrintController = void 0;
var auth_1 = require("../middleware/auth");
var print_1 = require("../model/print");
var print_2 = require("../types/print");
var PrintController = function (_a) {
    var route = _a.route;
    route.post("/register", function (req, res) { return __awaiter(void 0, void 0, void 0, function () {
        var body, find, print, error_1;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    _a.trys.push([0, 3, , 4]);
                    body = print_2.PrintTypes.parse(req.body);
                    console.log(body);
                    if (!body) {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "Body tidak boleh kosong"
                            })];
                    }
                    return [4 /*yield*/, print_1.Print.findOne({
                            model: body.model
                        })];
                case 1:
                    find = _a.sent();
                    if (find) {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "model sudah terdaftar"
                            })];
                    }
                    return [4 /*yield*/, print_1.Print.create(__assign({}, body))];
                case 2:
                    print = _a.sent();
                    return [2 /*return*/, res.status(200).json({
                            success: true,
                            message: "Berhasil",
                            data: print
                        })];
                case 3:
                    error_1 = _a.sent();
                    return [2 /*return*/, res.status(400).json({
                            success: false,
                            message: error_1
                        })];
                case 4: return [2 /*return*/];
            }
        });
    }); });
    route.get("/list/:brand", auth_1.authenticateJWT, function (req, res) { return __awaiter(void 0, void 0, void 0, function () {
        var brand, find, error_2;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    _a.trys.push([0, 2, , 3]);
                    brand = req.params;
                    console.log("brand...: ", brand);
                    return [4 /*yield*/, print_1.Print.find(brand)];
                case 1:
                    find = _a.sent();
                    if (!find) {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "print tidak di temukan"
                            })];
                    }
                    return [2 /*return*/, res.status(200).json({
                            success: true,
                            message: "print berhasil ditemukan",
                            data: find
                        })];
                case 2:
                    error_2 = _a.sent();
                    return [2 /*return*/, res.status(400).json({
                            success: false,
                            message: error_2
                        })];
                case 3: return [2 /*return*/];
            }
        });
    }); });
    route.get("/list/:id", auth_1.authenticateJWT, function (req, res) { return __awaiter(void 0, void 0, void 0, function () {
        var id, find, error_3;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    _a.trys.push([0, 2, , 3]);
                    id = req.params;
                    console.log("id...: ", id);
                    return [4 /*yield*/, print_1.Print.findById(id.id)];
                case 1:
                    find = _a.sent();
                    if (!find) {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "print tidak di temukan"
                            })];
                    }
                    return [2 /*return*/, res.status(200).json({
                            success: true,
                            message: "print berhasil ditemukan",
                            data: find
                        })];
                case 2:
                    error_3 = _a.sent();
                    return [2 /*return*/, res.status(400).json({
                            success: false,
                            message: error_3
                        })];
                case 3: return [2 /*return*/];
            }
        });
    }); });
    route.put("/update", auth_1.authenticateJWT, function (req, res) { return __awaiter(void 0, void 0, void 0, function () {
        var updateData, updatePrint, error_4;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    _a.trys.push([0, 2, , 3]);
                    updateData = print_2.PrintTypes.parse(req.body);
                    if (!updateData) {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "data tidak valid"
                            })];
                    }
                    return [4 /*yield*/, print_1.Print.findOneAndUpdate({ model: updateData.model }, updateData)];
                case 1:
                    updatePrint = _a.sent();
                    if (!updatePrint) {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "tidak bisa pembaruan"
                            })];
                    }
                    return [2 /*return*/, res.status(200).json({
                            success: true,
                            message: "print berhasil diperbarui",
                            data: updatePrint
                        })];
                case 2:
                    error_4 = _a.sent();
                    return [2 /*return*/, res.status(400).json({
                            success: false,
                            message: error_4
                        })];
                case 3: return [2 /*return*/];
            }
        });
    }); });
    route["delete"]("/delete", auth_1.authenticateJWT, function (req, res) { return __awaiter(void 0, void 0, void 0, function () {
        var deleteData, error_5;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0:
                    _a.trys.push([0, 2, , 3]);
                    return [4 /*yield*/, print_1.Print.deleteOne()];
                case 1:
                    deleteData = _a.sent();
                    if (!deleteData) {
                        return [2 /*return*/, res.status(400).json({
                                success: false,
                                message: "tidak ada yang di hapus"
                            })];
                    }
                    return [2 /*return*/, res.status(200).json({
                            success: true,
                            message: "data berhasil di hapus",
                            data: deleteData
                        })];
                case 2:
                    error_5 = _a.sent();
                    return [2 /*return*/, res.status(400).json({
                            success: false,
                            message: error_5
                        })];
                case 3: return [2 /*return*/];
            }
        });
    }); });
};
exports.PrintController = PrintController;
