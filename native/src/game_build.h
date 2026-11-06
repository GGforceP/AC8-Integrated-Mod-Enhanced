#pragma once
#include <cstdint>

namespace ac8_build {
// Steam 1.01.002, Build 26002268. The launcher also checks the EXE SHA-256.
inline constexpr unsigned steam_build = 26002268;
inline constexpr unsigned pe_timestamp = 0x6AD2D0A7;
inline constexpr unsigned image_size = 0x215A2000;
inline constexpr std::uintptr_t input = 0x4D2C040;
inline constexpr std::uintptr_t camera_update = 0x70B4960;
inline constexpr std::uintptr_t camera_table = 0xC9BCE20;
inline constexpr unsigned camera_update_slot = 241;
inline constexpr std::uintptr_t camera_cache_getter = 0x48EF260;
inline constexpr std::uintptr_t actor_location_exec = 0x3FCABB0;
inline constexpr std::uintptr_t helmet_select = 0x7283700;
inline constexpr std::uintptr_t helmet_release_return = 0x7D529E0;
}
