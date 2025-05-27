# Voting System - Project Gawain

A decentralized voting system built on the Sui blockchain using Move smart contracts with a modern React TypeScript frontend.

## 🏗️ Project Structure

```
project-Gawain/
├── voting_system/          # Move smart contracts
│   ├── sources/
│   │   └── voting_system.move
│   └── Move.toml
├── frontend/               # React TypeScript frontend
│   ├── src/
│   │   ├── App.tsx
│   │   ├── App.css
│   │   ├── index.css
│   │   └── main.tsx
│   ├── package.json
│   └── index.html
└── README.md
```

## 🚀 Features

### Smart Contract Features

- **Proposal Creation**: Create voting proposals with title, description, and expiration
- **Decentralized Voting**: On-chain voting with transparent vote counting
- **Vote Tracking**: Prevents double voting and tracks all participants
- **Time-bound Proposals**: Proposals have expiration dates for time-limited voting

### Frontend Features

- **Modern React UI**: Built with React 19, TypeScript, and Vite
- **Responsive Design**: Mobile-friendly interface with dark/light mode support
- **Real-time Updates**: Live proposal status and vote count updates

## 🛠️ Technology Stack

### Blockchain

- **Move Language**: Smart contract development
- **Sui Blockchain**: Layer 1 blockchain platform
- **Move Framework**: Standard libraries and utilities

### Frontend

- **React 19**: Modern React with hooks
- **TypeScript**: Type-safe JavaScript
- **Vite**: Fast build tool and dev server
- **CSS3**: Modern styling with CSS Grid and Flexbox

## 📋 Prerequisites

- [Sui CLI](https://docs.sui.io/build/install) - For Move contract development
- [Node.js](https://nodejs.org/) (v18 or higher) - For frontend development
- [pnpm/npm/yarn](https://pnpm.io/) - Package manager

## 🚀 Getting Started

### 1. Clone the Repository

```bash
git clone <repository-url>
cd project-Gawain
```

### 2. Smart Contract Setup

```bash
cd voting_system

# Install Sui CLI if not already installed
curl -fLJO https://github.com/MystenLabs/sui/releases/download/mainnet-v1.14.2/sui-mainnet-v1.14.2-ubuntu-x86_64.tgz

# Build the Move contracts
sui move build

# Test the contracts
sui move test

# Publish to testnet (requires testnet setup)
sui client publish --gas-budget 100000000
```

### 3. Frontend Setup

```bash
cd frontend

# Install dependencies
npm install

# Start development server
npm run dev

# Build for production
npm run build
```

## 🎯 Smart Contract API

### Proposal Structure

```move
public struct Proposal has key {
    id: UID,
    title: String,
    description: String,
    voted_yes_count: u64,
    voted_no_count: u64,
    expiration: u64,
    creator: address,
    voters: vector<address>,
}
```

### Available Functions

#### `create_proposal`

Creates a new voting proposal.

**Parameters:**

- `title: String` - Proposal title
- `description: String` - Detailed description
- `expiration: u64` - Expiration timestamp
- `ctx: &mut TxContext` - Transaction context

**Usage:**

```move
create_proposal(
    string::utf8(b"Proposal Title"),
    string::utf8(b"Proposal Description"),
    1234567890, // Expiration timestamp
    ctx
);
```

## 🖥️ Frontend Development

### Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run lint` - Run ESLint
- `npm run preview` - Preview production build

### Environment Setup

Create a `.env` file in the frontend directory:

```env
VITE_SUI_NETWORK=testnet
VITE_CONTRACT_ADDRESS=<your-contract-address>
```

## 🔧 Development Workflow

### Smart Contract Development

1. Make changes to `voting_system/sources/voting_system.move`
2. Build with `sui move build`
3. Test with `sui move test`
4. Deploy to testnet for integration testing

### Frontend Development

1. Start the dev server with `npm run dev`
2. Make changes to React components
3. Test in browser with hot reload
4. Build and deploy when ready

## 📦 Deployment

### Smart Contract Deployment

```bash
# Deploy to Sui testnet
sui client publish --gas-budget 100000000

# Note the package ID for frontend integration
```

### Frontend Deployment

```bash
# Build optimized production bundle
npm run build

# Deploy to your preferred hosting service
# (Vercel, Netlify, AWS S3, etc.)
```

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
